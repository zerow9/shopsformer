package com.coding.controller;

import com.coding.Iservice.IUserService;
import com.coding.pojo.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("user/address")
public class AddressController {
    @Autowired
    @Qualifier("userService")
    private IUserService userService;


    /**
     * 跳转到地址页面
     * @param uuid 用户ID
     * @return 地址页面
     */
    @RequestMapping("/address")
    public String addressInfomation(String uuid, Model model)throws Exception{
        List <Address> addresses = userService.selectAddressByUserID(uuid);
        model.addAttribute("addresses",addresses);
        System.out.println(addresses);
        return "persons/Address";
    }

    /**
     * 删除地址
     * @param addressId 地址ID
     */
    @RequestMapping("/deleteAddress")
    public String deleteAddress(Integer addressId)throws Exception{
        userService.deleteAddressByPrimaryKey(addressId);
        return "persons/Address";
    }

    /**
     * 查询用户的地址信息
     * @param addressId 地址ID
     */
    @RequestMapping("selectAddress")
    public String selectAddress(Integer addressId,Model model)throws Exception{
        Address address = userService.selectAddressByPrimaryKey(addressId);
        model.addAttribute("address",address);
        System.out.println(123);
        return "persons/updateAddress";
    }


    /**
     * 更新地址信息
     * @param address 对象
     */
    @RequestMapping("updateAddress")
    public String updateAddress(Address address)throws Exception{
        userService.updateAddressByPrimaryKey(address);
        String uuid = address.getUserUuid();
        System.out.println(address);
        return "forward:/user/address/address.action?uuid="+uuid;
    }

    /**
     * 插入地址信息
     * @param address 地址对象
     */
    @RequestMapping("insertAddress")
    public String insertAddress(Address address)throws Exception{
        System.out.println(address);
        userService.insertAddress(address);
        String uuid = address.getUserUuid();
        return "forward:/user/address/address.action?uuid="+uuid;
    }

    @RequestMapping("111")
    public String zz(){
        return "index";
    }
}
