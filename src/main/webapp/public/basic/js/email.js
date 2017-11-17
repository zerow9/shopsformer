var InterValObj;
var count = 60;
var curCount;

function sendMessage() {
    curCount = count;
    $("#btnSendCode").attr("disabled", "true");
    $("#btnSendCode").text(curCount + "秒");
    InterValObj = window.setInterval(SetRemainTime, 1000);
    var email = document.getElementById("email").value;
    $.ajax({
        url: '/user/email?email=' + email,
        success: function (msg) {
        }
    });
}

function SetRemainTime() {
    if (curCount == 0) {
        window.clearInterval(InterValObj);
        $("#btnSendCode").removeAttr("disabled");
        $("#btnSendCode").text("重发");
    }
    else {
        curCount--;
        $("#btnSendCode").text(curCount + "秒");
    }
}

function sub() {
    document.getElementById("update").submit();
}