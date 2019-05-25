package org.java.websocket;

import com.alibaba.fastjson.JSON;
import org.java.entity.UserList;

import javax.servlet.http.HttpSession;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint(value = "/websocket",configurator = GetHttpSessionConfigurator.class)
public class WebscoketManager {
    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
    private static int onlineCount = 0;

    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
    private static Map webSocketSet = new ConcurrentHashMap();
    private static Map sessionManager=new ConcurrentHashMap();
    /**
     * 连接建立成功调用的方法
     *
     * @param session 可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(Session session) {
        Map loginUser=getLoginUser(session);
        String userNumber= (String) loginUser.get("Number");
        if (webSocketSet.size()>0){
            if (webSocketSet.containsKey(userNumber)){
                System.out.println("用户已在另一客户端登录");
                List newSessionList= (List) sessionManager.get(userNumber);
                newSessionList.add(session.getId());
                sessionManager.put(userNumber, newSessionList);
                return;
            }
        }
        List sessionList=new Vector();
        sessionList.add(session.getId());
        sessionManager.put(userNumber, sessionList);
        webSocketSet.put(userNumber, loginUser);//加入set中
        addOnlineCount();
        //在线数加
        System.out.println("有新连接加入！当前在线人数为" + getOnlineCount());
    }

    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        Map loginUser=getLoginUser(session);
        String userNumber= (String) loginUser.get("Number");
        List sessionList= (List) sessionManager.get(userNumber);
        sessionList.remove(session.getId());
        if (sessionList.size()<=0){
            System.out.println("用户退出了登录");
            sessionManager.remove(userNumber);
            webSocketSet.remove(userNumber);  //从set中删除
            subOnlineCount(); //在线数减1
            System.out.println("有一连接关闭！当前在线人数为" + getOnlineCount());
        }else {
            System.out.println("用户已在某一个客户端下线");
            sessionManager.put(userNumber, sessionList);
        }
    }


    /**
     * 收到客户端消息后调用的方法
     *
     * @param message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public void onMessage(String message, Session session) {
        Map loginUser=getLoginUser(session);
        System.out.println("来自客户端的消息:" + message);
        //群发消息
        Set<WebscoketManager> set = webSocketSet.keySet();
        for (WebscoketManager item : set) {
            try {
                item.sendMessage(message);
            } catch (Exception e) {
                e.printStackTrace();
                continue;
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
     * 这个方法与上面几个方法不一样。没有用注解，是根据自己需要添加的方法。
     *
     * @param message
     * @throws IOException
     */
    public void sendMessage(String message) throws IOException {
        //this.session.getBasicRemote().sendText(JSON.toJSONString(msg));
        //this.session.getAsyncRemote().sendText(message);
    }

    /**
     * 获取用户编号
     * @return
     */
    public Map getLoginUser(Session session){
        HttpSession httpSession = getHttpSession(session);
        //获取登录用户
        Map loginUser= (Map) httpSession.getAttribute("loginMan");
        //获取登录用户编号
        return loginUser;
    }
    /**
     *获取httpsesion
     * @return
     */
    public HttpSession getHttpSession(Session session) {
        return (HttpSession) session.getUserProperties().get(HttpSession.class.getName());
    }



    public static synchronized int getOnlineCount() {
        if (onlineCount<0){
            onlineCount=0;
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
