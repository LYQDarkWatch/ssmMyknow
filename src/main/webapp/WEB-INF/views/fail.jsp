<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<center>

    <a href="/knowledge/myknow" id="clickMe" onclick="alert('类型重复！。。。');"></a>
</center>
    <script type="text/javascript">
    // 两秒后模拟点击
    setTimeout(function() {
    // IE
    if(document.all) {
    document.getElementById("clickMe").click();
    }
    // 其它浏览器
    else {
    var e = document.createEvent("MouseEvents");
    e.initEvent("click", true, true);
    document.getElementById("clickMe").dispatchEvent(e);
    }
    }, 2000);
</script>
