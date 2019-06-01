package org.java.service.impl;

import org.java.dao.ProcessMapper;
import org.java.service.ProcessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class ProcessServiceImpl implements ProcessService {
    @Autowired
    ProcessMapper processMapper;
    @Override
    public List<Map> loadProcess() {
        return processMapper.loadProcess();
    }
}
