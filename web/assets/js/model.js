function show() {
    /*$('#show').css('display','block');*/
    var a3 = document.getElementById("custom");
    a3.style.display = "inherit";
    var a1 = document.getElementById("model");
    a1.style.display = "none";
}
function hide() {
    var a1 = document.getElementById("custom");
    a1.style.display = "none";
    var a3 = document.getElementById("model");
    a3.style.display = "inherit";

}
function pageTest(obj) {

    window.location.href = "selectModel.do?currentPage=" + obj;
}

function add() {
    /*$('#show').css('display','block');*/
    var a3 = document.getElementById("content");
    a3.style.display = "inherit";
    var a1 = document.getElementById("add");
    a1.style.display = "none";
}
function use() {
    document.getElementById('use_table').submit();
}
function stat() {
    document.getElementById('sys_stat').submit();

}

/*$(function() {
 $("#checkAll").click(function() {
 $('input[name="subBox"]').attr("checked",this.checked);
 });
 var $subBox = $("input[name='subBox']");
 $subBox.click(function(){
 $("#checkAll").attr("checked",$subBox.length == $("input[name='subBox']:checked").length ? true : false);
 });
 });*/
//checkbox 全选/取消全选
var isCheckAll = false;
function swapCheck() {
    if (isCheckAll) {
        $("input[type='checkbox']").each(function () {
            this.checked = false;
        });
        isCheckAll = false;
    } else {
        $("input[type='checkbox']").each(function () {
            this.checked = true;
        });
        isCheckAll = true;
    }
}
