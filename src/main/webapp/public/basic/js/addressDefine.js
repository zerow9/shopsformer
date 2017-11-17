function updateDefaultAddress(addressId){
    $.ajax({
        url:"/user/address/updateDefaultAddress?addressId="+addressId,
        success:function () {
            window.location.reload();
        }
    })
}

function deleteAddress(addressId) {
    $.ajax({
        url:"/user/address/deleteAddress?addressId="+addressId,
        success:function () {
            window.location.reload();
        }
    })
}