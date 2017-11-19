$(function () {
    //添加商品的数量
    $(".min").click(function () {
        //获取购物车编号
        var id = $(this).parent().find("input[type='hidden']").val();
        //获取商品数量
        var number = $(this).parent().find(".text_box").val();
        var statu = 0;

        if (number == 1) {
            alert("不要减了，再减就没得卖!");
        } else {
            $.ajax({
                type: "POST",
                url: "minShopCartNumber?id=" + id,
                success: function (data) {
                    if (data === 'success') {
                        statu = statu + 1;
                    }
                }
            });
            alert("ds" + statu);
            if (statu == 1) {
                $(this).parent().find(".text_box").val(number - 1);
            }
        }
    });

    //添加商品的数量
    var add = $(".add").click(function () {
        //获取购物车编号
        var id = $(this).parent().find("input[type='hidden']").val();
        //获取商品数量
        var number = parseInt($(this).parent().find(".text_box").val());

        $(this).parent().find(".text_box").val(number);

        $.ajax({
            type: "POST",
            url: "addShopCartNumber?id=" + id,
            success: function (data) {
                if (data === 'success') {

                }
            }
        });

    });


});