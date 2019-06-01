package org.java.web;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.java.service.impl.ProcessServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;

@Controller
public class ProcessController {
    @Autowired
    ProcessServiceImpl processService;
    @Autowired
    RepositoryService repositoryService;
    @RequestMapping("loadProcess")
    public @ResponseBody List<Map> loadProcess(){
        System.out.println("aaaaaaaaaa");
        //创建流程定义的查询接口
        ProcessDefinitionQuery query = repositoryService.createProcessDefinitionQuery();
        //所有的流程定义
        List<ProcessDefinition> list = query.list();
        List<Map> list1=new ArrayList<>();
        for (ProcessDefinition p:list) {
            Map map=new HashMap();
            map.put("id", p.getId());
            map.put("name", p.getName());
            map.put("key", p.getKey());
            map.put("deploymentId", p.getDeploymentId());
            map.put("version", p.getVersion());
            map.put("diagramResourceName", p.getDiagramResourceName());
            list1.add(map);
        }
        return list1;
    }

    @RequestMapping("addProcess")
    public @ResponseBody Integer addProcess(@RequestParam("png") MultipartFile png,@RequestParam("bpmn") MultipartFile bpmn) throws Exception {
        String pngName= png.getOriginalFilename();
        String bpmnName=bpmn.getOriginalFilename();
        InputStream png_in=png.getInputStream();
        InputStream bpmn_in=bpmn.getInputStream();
        Deployment deploy = repositoryService.createDeployment()
                .addInputStream(bpmnName, bpmn_in).addInputStream(pngName, png_in)
                .deploy();
        System.out.println("流程定义的ID是:" + deploy.getId());
        System.out.println("部署时间:" + deploy.getDeploymentTime());
        int n=1;
        if (deploy==null){
            n=0;
        }
        return n;
    }
    @RequestMapping("delProcess")
    public @ResponseBody Integer delProcess(String deployId){
        String[] ids=deployId.split(",");
        for (String i:ids) {
            repositoryService.deleteDeployment(i,true);
        }
        return 0;
    }

    @RequestMapping("readProcess/{deployId}/{name}")
    public void showResource(@PathVariable("deployId") String deploymentId, @PathVariable("name") String name, HttpServletResponse res) throws Exception{
        InputStream in = repositoryService.getResourceAsStream(deploymentId, name);
        OutputStream out = res.getOutputStream();
        byte[] b= new byte[8192];
        int len=0;
        while((len =in.read(b,0,8192))!=-1){
            out.write(b,0, len);
        }
        out.close();
        in.close();
    }
}
