package com.coding.controller;

import com.coding.Lucene.SearchField;
import com.coding.serviceImpl.IndexService;
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
    private IndexService indexService;

    @RequestMapping("search")
    public String search(String searchInput)throws Exception{
        SearchField searchField = new SearchField();
        searchField.setIndexNumber(0);
        searchField.setPageNumber(10);
        searchField.setCondition(searchInput);
        indexService.findByIndex(searchField);
        return "";
    }

    @RequestMapping("getSearch")
    public String getSearch(){
        return "homes/search";
    }
}
