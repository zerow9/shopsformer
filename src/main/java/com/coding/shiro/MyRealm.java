package com.coding.shiro;

import java.util.ArrayList;
import java.util.List;

import com.coding.Iservice.IAdminService;
import com.coding.Iservice.IUserService;
import com.coding.paging.PagingCustomUser;
import com.coding.pojo.Groups;
import com.coding.pojo.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import seetaface.Face;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private IAdminService adminService;
    @Autowired
    private IUserService userService;


    @Override
    public void setName(String name) {
        super.setName("myRealm");
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken usernamePassword = (UsernamePasswordToken) token;
        String email = usernamePassword.getUsername();
        char c[] = usernamePassword.getPassword();
        String code = new String(c);
        try {
            PagingCustomUser pagingCustomUser = new PagingCustomUser();
            User use = new User();
            use.setUserEmail(email);
            pagingCustomUser.setUser(use);
            User user = adminService.selectUser(pagingCustomUser).get(0);
            String md5Code = user.getUserPassword();
            if (code.equals("383ef385d69a446a902619e5dfef08dbs")) {
                return new SimpleAuthenticationInfo(email, "383ef385d69a446a902619e5dfef08dbs", this.getName());
            } else {
                String slat = code + user.getSalt();
                String md5 = userService.selectMD5(slat);
                if (!md5.equals(md5Code))
                    code = "";
                return new SimpleAuthenticationInfo(email, code, this.getName());
            }
        } catch (Exception e) {
        }
        return null;
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
