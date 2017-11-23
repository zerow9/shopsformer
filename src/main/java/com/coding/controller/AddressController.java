package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.paging.PagingCustomAddress;
import com.coding.pojo.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user/address")
public class AddressController {
    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    /**
     * 跳转到地址页面
     *
     * @return 地址页面
     */
    @RequestMapping("/address")
    public String addressInfomation(HttpSession session, Model model) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        List<Address> addresses=null;
        try {
            addresses = userService.selectAddressByUserID(uuid);
            model.addAttribute("addresses", addresses);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "persons/address";
    }

    /**
     * 删除地址
     *
     * @param addressId 地址ID
     */
    @RequestMapping("/deleteAddress")
    public String deleteAddress(Integer addressId) throws Exception {
        userService.deleteAddressByPrimaryKey(addressId);
        return "persons/address";
    }

    /**
     * 查询用户的地址信息
     *
     * @param addressId 地址ID
     */
    @RequestMapping("selectAddress")
    public String selectAddress(Integer addressId, Model model) throws Exception {
        Address address = userService.selectAddressByPrimaryKey(addressId);
        model.addAttribute("address", address);
        return "persons/updateAddress";
    }

    /**
     * 更新地址信息
     *
     * @param address 对象
     */
    @RequestMapping("updateAddress")
    public String updateAddress(Address address) throws Exception {
        userService.updateAddressByPrimaryKey(address);
        return "redirect:/user/address/address";
    }

    /**
     * 插入地址信息
     *
     * @param address 地址对象
     */
    @RequestMapping("insertAddress")
    @ResponseBody
    public String insertAddress(HttpSession session,Address address)throws Exception {
        String userUuid = (String)session.getAttribute("uuid");
        PagingCustomAddress pagingCustomAddress = new PagingCustomAddress();
        Address addressDefault = new Address();
        addressDefault.setUserUuid(userUuid);
        pagingCustomAddress.setAddress(addressDefault);
        Integer addressCount = userService.selectAddressCountByColumn(pagingCustomAddress);
        if (addressCount ==0){
            address.setIsDefaultAddress(1);
        }
        if (addressCount>=9){
            return "fail";
        }
        address.setUserUuid(userUuid);
        userService.insertAddress(address);
        return "success";
    }

    /**
     * 设置默认地址
     *
     * @return 原页面
     */
    @RequestMapping("updateDefaultAddress")
    public String updateDefaultAddress(HttpSession session, Integer addressId) throws Exception {
        String uuid = (String) session.getAttribute("uuid");
        Address address = new Address();
        address.setUserUuid(uuid);
        address.setAddressId(addressId);
        userService.updateAddressUserDefaultAddress(address);
        return "persons/address";
    }
}
