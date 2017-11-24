package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.Constant;
import com.coding.comomInterface.DateToString;
import com.coding.paging.PagingCustomItem;
import com.coding.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("item")
public class ItemController {
    @Autowired
    private IAdminService adminService;

    @RequestMapping("indexTenItem")
    public String indexTenItem(HttpSession session) {
        PagingCustomItem pagingCustomItem = new PagingCustomItem();
        pagingCustomItem.setIndexNumber(0);
        pagingCustomItem.setPageNumber(8);
        List<Item> list = null;
        try {
            list = adminService.selectItem(pagingCustomItem);
            for (Item item : list)
                session.setAttribute("listItem", list);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "homes/index";
    }

    @RequestMapping("findItemMessage")
    public String findItemMessage(Integer itemId, Model model) throws Exception {
        Item item = adminService.selectItemByPrimaryKey(itemId);
        item.setDateToString(DateToString.date(item.getMakeDate()));
        model.addAttribute("item", item);
        return "homes/introduction";
    }


}
