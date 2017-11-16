package com.coding.shiro;

import java.util.ArrayList;
import java.util.List;

import com.coding.Iservice.IAdminService;
import com.coding.pojo.Groups;
import com.coding.pojo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private IAdminService adminService;

    @Override
    public void setName(String name) {
        super.setName("user");
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken usernamePassword = (UsernamePasswordToken) token;
        String userName = usernamePassword.getUsername();
        System.out.println(userName);
        String code = "4625425375472537457235427345754732";
        try {
            User user = adminService.selectUserByPhone(userName);
            code = user.getUserPassword();
            System.out.println(code);
        } catch (Exception e) {
        }
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userName, code, this.getName());
        return info;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        List<String> list = new ArrayList<String>();
        Groups groups = null;
        try {
            groups = adminService.selectGroupsByPrimaryKey(2);
        } catch (Exception e) {
            return null;
        }
        String power = groups.getGroupJurisdiction();
        System.out.println(power);
        for (String str : power.split(",")) {
            list.add(str);
        }
        info.addStringPermissions(list);
        return info;
    }
}
