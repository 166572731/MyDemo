package org.java.service.impl;

import org.java.dao.CalendarMapper;
import org.java.service.CalendarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CalendarServiceImpl implements CalendarService {

    @Autowired
    private CalendarMapper calendarMapper;

    @Override
    public List<Map<String, Object>> showCalendar(String name) {
        return calendarMapper.showCalendar(name);
    }

    @Override
    public void delete(int id) {
        calendarMapper.delete(id);
    }

    @Override
    public void addCalendar(Map<String, Object> map) {
        calendarMapper.addCalendar(map);
    }
}
