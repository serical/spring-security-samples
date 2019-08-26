package com.serical.oauth2.resource.controller;

import com.serical.oauth2.resource.service.ContentService;
import com.serical.oauth2.result.Result;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/content")
public class ContentController {

    private final ContentService contentService;

    public ContentController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping("/selectAll")
    public Object selectAll() {
        return Result.success(contentService.selectAll());
    }
}
