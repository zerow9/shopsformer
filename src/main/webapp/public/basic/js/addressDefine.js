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