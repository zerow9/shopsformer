
function deleteOrder(orderId,operation) {
    swal({
        title: "确定"+operation+"该订单吗？",
        text: "该订单即将被"+operation+"！",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "确定"+operation+"！",
        closeOnConfirm: false
    }, function () {
        $.ajax({
            url: "/user/order/deleteOrder?orderId=" + orderId,
            success: function () {
                swal({
                        title: operation,
                        text: "已经成功"+operation+"订单！",
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