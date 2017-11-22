$(document).ready(function () {
    $(".new-option-r").click(function () {
        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
    });

    var $ww = $(window).width();
    if ($ww > 640) {
        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
    }

    //提交表单
    $(".submit").on("click",function () {
        var data=$("#addressForm").serialize();//系列化表单
        $.ajax({
            type:"POST",
            data:data,
            url:"/user/address/insertAddress",
            success:function (da) {
                if (da === "success") {
                    window.location.reload();
                } else if (da === "fail") {
                    swal({
                        title: "最多允许添加10条地址信息！",
                        type: "error",
                        timer: 2000,
                        showConfirmButton: false
                    });
                } else swal({
                    title: "添加失败！",
                    type: "warning",
                    timer: 2000,
                    showConfirmButton: false
                });
            }
        });
    });

})