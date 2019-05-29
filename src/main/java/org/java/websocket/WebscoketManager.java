package org.java.websocket;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.java.entity.UserList;

import javax.servlet.http.HttpSession;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint(value = "/websocket", configurator = GetHttpSessionConfigurator.class)
public class WebscoketManager {
    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static int onlineCount = 0;
    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
    private static CopyOnWriteArraySet<WebscoketManager> webSocketSet = new CopyOnWriteArraySet<>();
    private Session session;    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private String userid;      //用户名
    private HttpSession httpSession;    //request的session

    private static List list = new ArrayList<>();   //在线列表,记录用户名称
    private static Map routetab = new HashMap<>();  //用户名和websocket的session绑定的路由表

    /**
     * 连接建立成功调用的方法
     *
     * @param session 可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session) {
        this.session = session;
        webSocketSet.add(this);     //加入set中
        this.httpSession = getHttpSession(session);
        Map loginUser = getLoginUser(session);
        this.userid = (String) loginUser.get("Number");
        list.add(userid);           //将用户名加入在线列表
        routetab.put(userid, session);   //将用户名和session绑定到路由表
        addOnlineCount();
        //在线数加
        System.out.println("有新连接加入！当前在线人数为" + getOnlineCount());
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        webSocketSet.remove(this);  //从set中删除
        subOnlineCount();           //在线数减1
        list.remove(userid);        //从在线列表移除这个用户
        routetab.remove(userid);
        String message = getMessage("[" + userid +"]离开了聊天室,当前在线人数为"+getOnlineCount()+"位", "notice", list);
        broadcast(message);         //广播
    }


    /**
     * 收到客户端消息后调用的方法
     *
     * @param _message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public void onMessage(String _message, Session session) {
        JSONObject chat = JSON.parseObject(_message);
        JSONObject message = JSON.parseObject(chat.get("message").toString());
        if(message.get("to") == null || message.get("to").equals("")){      //如果to为空,则广播;如果不为空,则对指定的用户发送消息
            broadcast(_message);
        }else{
            String [] userlist = message.get("to").toString().split(",");
            singleSend(_message, (Session) routetab.get(message.get("from")));      //发送给自己,这个别忘了
            for(String user : userlist){
                if(!user.equals(message.get("from"))){
                    singleSend(_message, (Session) routetab.get(user));     //分别发送给每个指定用户
                }
            }
        }
    }

    /**
     * 发生错误时调用
     *
     * @param session
     * @param error
     */
    @OnError
    public void onError(Session session, Throwable error) {
        System.out.println("发生错误");
        webSocketSet.remove(this);
    }

    /**
     * 广播消息
     * @param message
     */
    public void broadcast(String message){
        for(WebscoketManager chat: webSocketSet){
            try {
                chat.session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                e.printStackTrace();
                continue;
            }
        }
    }

    /**
     * 对特定用户发送消息
     * @param message
     * @param session
     */
    public void singleSend(String message, Session session){
        try {
            session.getBasicRemote().sendText(message);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 组装返回给前台的消息
     * @param message   交互信息
     * @param type      信息类型
     * @param list      在线列表
     * @return
     */
    public String getMessage(String message, String type, List list){
        JSONObject member = new JSONObject();
        member.put("message", message);
        member.put("type", type);
        member.put("list", list);
        return member.toString();
    }

    /**
     * 获取登录用户
     *
     * @return
     */
    public Map getLoginUser(Session session) {
        HttpSession httpSession = getHttpSession(session);
        //获取登录用户
        Map loginUser = (Map) httpSession.getAttribute("loginMan");
        //获取登录用户编号
        return loginUser;
    }

    /**
     * 获取httpsesion
     *
     * @return
     */
    public HttpSession getHttpSession(Session session) {
        return (HttpSession) session.getUserProperties().get(HttpSession.class.getName());
    }


    public static synchronized int getOnlineCount() {
        if (onlineCount < 0) {
            onlineCount = 0;
        }
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebscoketManager.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebscoketManager.onlineCount--;
    }
}
