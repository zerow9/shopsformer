function updateDefaultAddress(userUuid,addressId){
    var data = JSON.stringify({"addressId":addressId,"userUuid":userUuid});
    $.ajax({
        url:"/user/address/updateDefaultAddress.action?userUuid="+userUuid+"&addressId="+addressId,
        // data:'address='+data,
        success:function () {
            window.location.reload();
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