$(function () {
    $(".new-option-r").click(function () {
        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
    });

    var $ww = $(window).width();
    if ($ww > 640) {
        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
    }

    //提交表单
    $(".submit").click(function () {
        var data = $("#addressForm").serialize();//系列化表单
        $.ajax({
            type: "post",
            data: data,
            url: "/user/address/insertAddress",
            success: function (da) {
                if (da === "success") {
                    swal({
                        title: "添加成功！",
                        text: "地址添加成功了",
                        type: "success"
                    }, function () {
                        $(':input', '#addressForm')
                            .not(':button,:submit,:reset,:hidden')
                            .val('')
                            .removeAttr('checked')
                            .removeAttr('selected');
                        window.location.reload();
                    });

                } else if (da === "err") {
                    swal({
                        title: "添加失败！",
                        text: "地址添加失败了",
                        type: "error"
                    }, function () {
                        $(':input', '#addressForm')
                            .not(':button,:submit,:reset,:hidden')
                            .val('')
                            .removeAttr('checked')
                            .removeAttr('selected');
                        window.location.reload();
                    });
                } else swal({
                    title: "添加失败！",
                    text: "最多添加 10 条地址信息！",
                    type: "warning"
                }, function () {
                    $(':input', '#addressForm')
                        .not(':button,:submit,:reset,:hidden')
                        .val('')
                        .removeAttr('checked')
                        .removeAttr('selected');
                    window.location.reload();
                });
            }
        });
    });

});