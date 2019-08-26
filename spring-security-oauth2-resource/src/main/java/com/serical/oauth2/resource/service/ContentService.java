package com.serical.oauth2.resource.service;

import com.serical.oauth2.resource.entity.Content;
import com.serical.oauth2.resource.mapper.ContentMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ContentService {

    @Resource
    private ContentMapper contentMapper;

    public List<Content> selectAll() {
        return contentMapper.selectAll();
    }
}
