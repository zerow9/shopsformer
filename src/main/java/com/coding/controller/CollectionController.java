package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.comomInterface.Constant;
import com.coding.paging.Paging;
import com.coding.paging.PagingCustomCart;
import com.coding.paging.PagingCustomCollect;
import com.coding.pojo.Cart;
import com.coding.pojo.Collect;
import com.coding.pojo.CollectDetail;
import com.coding.pojo.Item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 收藏的Controller
 */
@Controller
@RequestMapping("collection")
public class CollectionController {

    @Autowired
    private IUserService userService;

    @RequestMapping("getUserConllection")
    public String getCollection(Model model, HttpServletRequest request) {
        //设置查询条件
        String userId = (String)request.getSession().getAttribute("uuid");

        try {
            PagingCustomCollect pagingCustomCollect = new PagingCustomCollect();
            Collect seach = new Collect();
            seach.setUserUuid(userId);
            pagingCustomCollect.setCollect(seach);

            // 获取用户的收藏
            List<Collect> collects = userService.selectCollect(pagingCustomCollect);

            List<CollectDetail> collectDetails = new ArrayList<CollectDetail>();
            for (Collect collect : collects) {
                Item item = userService.selectItemByPrimaryKey(collect.getItemId());
                CollectDetail collectDetail = new CollectDetail();
                collectDetail.setCollectId(collect.getCollectId());
                collectDetail.setItem(item);
                collectDetail.setUserUuid(collect.getUserUuid());
                collectDetail.setItemImages(Constant.PICTURE_PATH+item.getItemImages());
                collectDetail.setItemName(item.getItemName());
                collectDetails.add(collectDetail);
            }
            model.addAttribute("collectDetails", collectDetails);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return "persons/collection";
    }

    /**
     * 取消收藏
     *
     * @param id 收藏编号
     * @return
     * @throws Exception
     */
    @RequestMapping("deleteCollect")
    public String deleteCollect(Integer id) throws Exception {
        userService.deleteCollectByPrimaryKey(id);
        return "persons/collection";
    }

    @RequestMapping("addShopCart")
    @ResponseBody
    public String addShopCart(Integer id, double pice) {
        try {
            // 创建插入的实体
            Cart cart = new Cart();
            Collect collect = userService.selectCollectByPrimaryKey(id);
            cart.setUserUuid(collect.getUserUuid());
            cart.setItemId(collect.getItemId());
            cart.setPrice(pice);
            cart.setItemNumber(1);
            Item item=userService.selectItemByPrimaryKey(collect.getItemId());
            cart.setMakeVender(item.getMakeVender());

            // 检查数据库是否存在
            PagingCustomCart pagingCustomCart=new PagingCustomCart();
            Cart cart1=new Cart();
            cart1.setItemId(collect.getItemId());
            cart1.setUserUuid(collect.getUserUuid());
            pagingCustomCart.setCart(cart1);
            try {
                List<Cart> chack = userService.selectCart(pagingCustomCart);
                if (chack.size()>0){
                    return "err";
                }
            }catch (Exception e){
                    e.printStackTrace();
            }
            // 插入数据库
            userService.insertCartSelective(cart);
        } catch (Exception e) {
            e.printStackTrace();
            return "false";
        }
        return "success";
    }
}
