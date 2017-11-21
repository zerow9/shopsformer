$(function () {
    //添加商品的数量
    $(".min").click(function () {
        var ele = $(this).parent();//公共变量
        var eleul=$(this).parent().parent().parent().parent().parent(); // 找ul的公共变量
        var id = ele.find("input[type='hidden']").val();//获取购物车编号
       // var eleli=$(this).parent().parent().parent().parent().parent().find("li.td.td-sum>.td-inner>.number").html(1);
        var number = ele.find(".text_box").val();// 获取商品的数量
        var pice=eleul.find(".price-now").html();//获取商品的价格

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
                }
            }
        });

    });

    //选中使用的条目
    //$(".bundle-main>ul>li").find("#J_CheckBox").addClass("checked","checked")
    // var l=$(".bundle-main>ul>li").find("#J_CheckBox").val();
    // console.log(l);

    // 点击onclick 事件
     $(".check").on("click",function(){
         $(this).addClass("checked");
         $("#J_Total").html(9);
         $("#J_SelectedItemsCount").html(34);
     });

});

//添加商品
var addCollection=function(id){
    $.ajax({
        type:"POST",
        url:"addCollection?id="+id,
        success:function (data) {
            if(data=="success"){
                alert("添加成功！");
            }else if(data=="err"){
                alert("添加失败！购物车已经存在！")
            }else {
                alert("添加失败！")
            }
        }
    });
}

var deleteCollection=function (id) {
    $.ajax({
        type:"POST",
        url:"deleteShopCart?id="+id,
        success:function(data){
            if(data=="success"){
                window.location.reload();
            }
        }
    });
}