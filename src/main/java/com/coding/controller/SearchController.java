package com.coding.controller;

import com.coding.CustomVo.CustomVoSearch;
import com.coding.Lucene.SearchField;
import com.coding.comomInterface.JavaGet;
import com.coding.pojo.Item;
import com.coding.serviceImpl.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 搜索的 Controller
 */
@Controller
@RequestMapping("search")
public class SearchController {

    @Autowired
    private IndexService indexService;
    private Integer count;

    @RequestMapping("search")
    public String search(String searchInput, Model model,Integer page, HttpServletRequest request)throws Exception{
        CustomVoSearch customVoSearch = new CustomVoSearch();
        String searchKey = JavaGet.charsetGet(searchInput,request);
        SearchField searchField = new SearchField();
        searchField.setIndexNumber(page-1);
        searchField.setPageNumber(12);
        searchField.setCondition(searchKey);
        customVoSearch.setSearchInput(searchKey);
        customVoSearch.setPage(page);
        if (count==null){
            SearchField searchField1 = new SearchField();
            searchField1.setCondition(searchKey);
            count = indexService.getDocCount(searchField1);
        }
        customVoSearch.setSumPage(count/12+1);
        List<Item> items = indexService.findByIndex(searchField);
        System.out.println(items);
        model.addAttribute("items",items);
        model.addAttribute("customVoSearch",customVoSearch);
        return "homes/search";
    }

    @RequestMapping("getSearch")
    public String getSearch(){
        return "homes/search";
    }
}
