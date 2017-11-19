package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.paging.PagingCustomItem;
import com.coding.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("item")
public class ItemController {
    @Autowired
    private IAdminService adminService;

    @RequestMapping("indexTenItem")
    private String indexTenItem(HttpSession session)throws  Exception{
        PagingCustomItem pagingCustomItem=new PagingCustomItem();
        pagingCustomItem.setIndexNumber(0);
        pagingCustomItem.setPageNumber(10);
        List<Item> list=adminService.selectItem(pagingCustomItem);
        session.setAttribute("listItem",list);
        return "homes/index";
    }
}
