package com.coding.controller;

import com.coding.CustomVo.CustomVoSearch;
import com.coding.Lucene.SearchField;
import com.coding.comomInterface.Constant;
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
    private Integer count = null;
    private String searchKey = null;
    private Integer counts = null;

    @RequestMapping("search")
    public String search(String searchInput, Model model, Integer page, HttpServletRequest request) throws Exception {
        if (searchInput == null || searchInput.equals(""))
            return "homes/index";
        CustomVoSearch customVoSearch = new CustomVoSearch();
        String searchKey = JavaGet.charsetGet(searchInput, request);
        SearchField searchField = new SearchField();
        searchField.setCondition(searchKey);
        searchField.setIndexNumber(page - 1);
        searchField.setPageNumber(Constant.PAGE_NUMBER);
        customVoSearch.setSearchInput(searchKey);
        customVoSearch.setPage(page);
        List<Item> items = indexService.findByIndex(searchField);

        if (count == null || !searchKey.equals(this.searchKey)) {
            count = indexService.getDocCount(searchField);
            this.searchKey = searchKey;
            if (count == 0)
                customVoSearch.setSearchCount(Constant.ERROR_NUMBER);
            counts = count % Constant.PAGE_NUMBER == 0 ? count / Constant.PAGE_NUMBER : count / Constant.PAGE_NUMBER + 1;
        }
        if (counts > page + Constant.PAGE)
            customVoSearch.setSumPage(page + Constant.PAGE);
        else
            customVoSearch.setSumPage(counts);
        model.addAttribute("items", items);
        model.addAttribute("customVoSearch", customVoSearch);
        model.addAttribute("countPage", counts);
        return "homes/search";
    }

    @RequestMapping("getSearch")
    public String getSearch() {
        return "homes/search";
    }
}
