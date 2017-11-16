function updateDefaultAddress(addressId,userUuid){
    var data = JSON.stringify({"addressId":addressId,"userUuid":userUuid});
    $.ajax({
        url:"/user/address/updateDefaultAddress.action",
        data:data,
        success:function () {
        }
    })
}

function deleteAddress(addressId,userUuid) {
    var data = JSON.stringify({"addressId":addressId,"userUuid":userUuid});
    $.ajax({
        url:"/user/address/deleteAddress.action?addressId="+addressId,
        success:function () {
            window.location.reload();
        }
    })
}