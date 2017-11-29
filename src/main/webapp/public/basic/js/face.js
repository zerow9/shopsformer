navigator.getUserMedia = navigator.getUserMedia ||
    navigator.webkitGetUserMedia ||
    navigator.mozGetUserMedia;
if (navigator.getUserMedia) {
    navigator.getUserMedia({audio: false, video: {width: 320, height: 320}},
        function (stream) {
            var video = document.getElementById("video");
            video.src = window.URL.createObjectURL(stream);
            video.onloadedmetadata = function (e) {
                console.log('nihao44eee4aaaaddda');
                video.play();
            };
        },
        function (err) {
            console.log("The following error occurred: " + err.name);
        }
    );
} else {
    console.log("getUserMedia not supported");
}
var context = document.getElementById("canvas").getContext("2d");
document.getElementById("picture").addEventListener("click", function () {
    context.drawImage(video, 0, 0, 320, 320);
});
document.getElementById("sc").addEventListener("click", function () {
    var imgData = document.getElementById("canvas").toDataURL("image/png");
    var data = imgData.substr(22);
     $.post('/updateFace', {'sj': data},function (b) {
         if (b) {
             alert("上传照片成功！");
         }else{
            alert("上传照片失败！");
         }
    });

});