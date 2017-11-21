package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.pojo.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
        List<Address> addresses = userService.selectAddressByUserID(uuid);
        model.addAttribute("addresses", addresses);
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
        String userUuid = address.getUserUuid();
        System.out.println(address);
        return "redirect:/user/address/address";
    }

    /**
     * 插入地址信息
     *
     * @param address 地址对象
     */
    @RequestMapping("insertAddress")
    public String insertAddress(Address address) throws Exception {
        if(true){}
        else { throw new Exception("插入收获地址时出错");}
        userService.insertAddress(address);
        String userUuid = address.getUserUuid();
        return "redirect:/user/address/address";
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
