package com.coding.controller;

import com.coding.Iservice.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 搜索的 Controller
 */
@Controller
@RequestMapping("search")
public class SearchController {

    @Autowired
    private IAdminService adminService;

    @RequestMapping("getSearch")
    public String getSearch(){
        return "homes/search";
    }
}
