$(function () {
    //添加商品的数量
    $(".min").click(function () {

        var ele = $(this).parent();//公共变量
        var eleul=$(this).parent().parent().parent().parent().parent(); // 找ul的公共变量
        var id = ele.find("input[type='hidden']").val();//获取购物车编号
       // var eleli=$(this).parent().parent().parent().parent().parent().find("li.td.td-sum>.td-inner>.number").html(1);
        var number = ele.find(".text_box").val();// 获取商品的数量
        var pice=eleul.find(".price-now").html();//获取商品的价格
        ele.find(".add").attr("disabled",false);
        if (number == 1) {
            ele.find(".min").attr("disabled",true);
        } else {
            ele.find(".min").attr("disabled",false);
            $.ajax({
                type: "POST",
                url: "minShopCartNumber?id=" + id,
                success: function (data) {
                    if (data == 'success') {
                        eleul.find(".number").html(pice*(number-1));
                        ele.find('.text_box').val(number - 1);
                    }

                }
            });

        }
    });

    //添加商品的数量
    var add = $(".add").click(function () {

        var ele = $(this).parent();
        var id = ele.find("input[type='hidden']").val();//获取购物车编号
        var eleul=$(this).parent().parent().parent().parent().parent(); // 找ul的公共变量
        var number = parseInt(ele.find(".text_box").val());// 获取商品的数量
        var pice=parseInt(eleul.find(".price-now").html());//获取商品的价格
        ele.find(".min").attr("disabled",false);
        $.ajax({
            type: "POST",
            url: "addShopCartNumber?id=" + id,
            success: function (data) {
                if (data == 'success') {
                    eleul.find(".number").html(pice*(number+1));
                    ele.find('.text_box').val(number + 1);
                }else if(data=='error'){
                    ele.find(".add").attr("disabled",true);
                    swal({
                        title: "商品数量不足！",
                        type: "error",
                        timer: 2000,
                        showConfirmButton: false
                    });
                }
            }
        });

    });

});

//添加商品到购物车
var addCollection=function(id){
    $.ajax({
        type:"POST",
        url:"addCollection?id="+id,
        success: function (data) {
            if (data === "success") {
                swal({
                    title: "添加购物车成功！",
                    type: "success",
                    timer: 2000,
                    showConfirmButton: false
                });
            } else if (data === "fail") {
                swal({
                    title: "添加购物车失败！",
                    type: "error",
                    timer: 2000,
                    showConfirmButton: false
                });
            } else swal({
                title: "购物车中已经存在，您可要去购物车进行购买！",
                type: "warning",
                timer: 1000,
                showConfirmButton: false
            });
        }
    });
}

//从购物车中删除商品
var deleteShopCart=function (id) {
    swal({
            title: "确定删除该商品吗？",
            text: "宝贝即将离开您的购物车",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确定删除！",
            closeOnConfirm: false
        },
        function(){
            $.ajax({
                type:"POST",
                url:"deleteShopCart?id="+id,
                success:function(data){
                    if(data=="success"){
                        swal({
                            title: "删除成功！",
                            type: "success",
                            timer: 2000,
                            showConfirmButton: false
                        });
                        window.location.reload();
                    }
                }
            });

        });

}