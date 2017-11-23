function updateDefaultAddress(addressId) {
    $.ajax({
        url: "/user/address/updateDefaultAddress?addressId=" + addressId,
        success: function () {
            window.location.reload();
        }
    })
}

function deleteAddress(addressId) {
    swal({
        title: "确定删除该地址吗？",
        text: "该地址即将被删除！",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "确定删除！",
        closeOnConfirm: false
    }, function () {
        $.ajax({
            url: "/user/address/deleteAddress?addressId=" + addressId,
            success: function () {
                swal({
                        title: "删除！",
                        text: "已经成功删除地址！",
                        type: "success",
                        timer:2000,
                        showConfirmButton:false
                    },
                    function () {
                        window.location.reload();
                    });
            }
        })
    });

}

function phoneNumber() {    // 验证手机号码
    var phoneNumber=document.getElementById("userPhone").value;//获取密码框的值
    var Regex = /((1[3-5])\d{9})|((1[7-8])\d{9})|(0[1-9]{2,3}\-?[1-9]{6,7})/i;
    if (Regex.test(phoneNumber)){
        document.getElementById("phoneNumber").innerHTML="";
    }
    else {
        if (phoneNumber == "") {
            document.getElementById("phoneNumber").innerHTML="请输入手机号码！";//检测到密码为空，提醒输入//
            document.getElementById("userPhone").focus();//焦点放到密码框
            return false;
        }
        else {
            document.getElementById("phoneNumber").innerHTML="手机号码格式不正确，请重新输入！";//检测到密码为空，提醒输入//
            document.getElementById("userPhone").focus();//焦点放到密码框
            return false;
        }
    }
}