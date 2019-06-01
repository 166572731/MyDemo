package org.java.test;

import org.java.service.WebSocketService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class Demo {
     @Autowired
     WebSocketService webSocketService;
     @Test
     public void aaa(){
          Map talkMap=new HashMap();
          talkMap.put("talk_from","222");
          talkMap.put("talk_to","111");
          talkMap.put("talk_content","sdsgbrb ");
          talkMap.put("talk_time","2019-1-1");
          System.out.println(webSocketService.addtalk(talkMap));
     }
}
