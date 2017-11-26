package com.coding.controller;

import com.coding.Iservice.IAdminService;
import com.coding.comomInterface.Constant;
import com.coding.comomInterface.DateToString;
import com.coding.paging.PagingCustomDiscuss;
import com.coding.paging.PagingCustomItem;
import com.coding.pojo.DiscuessDetail;
import com.coding.pojo.Discuss;
import com.coding.pojo.Item;
import com.coding.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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

    /**
     * 查询商品信息
     * @param itemId
     *                商品编号
     * @param model
     *              返回数据
     * @return
     * @throws Exception
     */
    @RequestMapping("findItemMessage")
    public String findItemMessage(Integer itemId,Integer page, Model model) throws Exception {

        //查询商品的信息
        Item item = adminService.selectItemByPrimaryKey(itemId);
        item.setDateToString(DateToString.date(item.getMakeDate()));

        Integer count=0;

        Discuss discuss=new Discuss();
        discuss.setItemId(itemId);
        //查询评论的信息
        PagingCustomDiscuss pagingCustomDiscuss=new PagingCustomDiscuss();
        pagingCustomDiscuss.setDiscuss(discuss);
        pagingCustomDiscuss.setPageNumber(10);
        pagingCustomDiscuss.setIndexNumber(page-1);

        List<DiscuessDetail> discuessDetails=new ArrayList<DiscuessDetail>();

        try {
            List<Discuss> discusses=adminService.selectDiscuss(pagingCustomDiscuss);
            for (Discuss discuss1:discusses){
                DiscuessDetail discuessDetail=new DiscuessDetail();
                discuessDetail.setDiscussId(discuss1.getDiscussId());
                discuessDetail.setDateToString(DateToString.date(discuss1.getDiscussTime()));
                discuessDetail.setDiscussDetail(discuss1.getDiscussDetail());

                try{
                User user=adminService.selectUserByPrimaryKey(discuss1.getUserUuid());
                discuessDetail.setUser(user);}catch (Exception e){e.printStackTrace();}

                try{
                Item item1=adminService.selectItemByPrimaryKey(discuss.getItemId());
                discuessDetail.setItem(item1);}catch (Exception e){e.printStackTrace();}

                discuessDetails.add(discuessDetail);
                model.addAttribute("discuessDetails",discuessDetails);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        try{
            //查询总的条数
            PagingCustomDiscuss pagingCustomDiscuss2=new PagingCustomDiscuss();
            pagingCustomDiscuss2.setDiscuss(discuss);
            count=adminService.selectDiscussCount(pagingCustomDiscuss2);

            int sumPage=0;
            if(count/10==0){
                sumPage=count/10+1;
            }else sumPage=count/10;

            model.addAttribute("sumPage",sumPage);//总页数
        }catch (Exception e){
            e.printStackTrace();
        }

        model.addAttribute("page",page);//页数
        model.addAttribute("count",count);//总的条数
        model.addAttribute("item", item);//商品信息
        return "homes/introduction";
    }


}
