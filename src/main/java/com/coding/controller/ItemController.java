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
    public String indexTenItem(HttpSession session) throws Exception {
        PagingCustomItem pagingCustomItem = new PagingCustomItem();
        pagingCustomItem.setIndexNumber(0);
        pagingCustomItem.setPageNumber(10);
        List<Item> list = adminService.selectItem(pagingCustomItem);
        for (Item item : list)
            item.setItemImages(Constant.PICTURE_PATH + item.getItemImages());
        session.setAttribute("listItem", list);
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
