var send_login        = 1;
var send_mkad         = 1;
function form_dangnhap(auto_key_pass){
    if(send_login == 1) return false;
    var cls_user_login = $(".cls_user_login").val();
    var cls_pass_login = $(".cls_pass_login").val();
    if (cls_user_login == "") {
        alert("Tên đăng nhập không được để trống!");
        $(".cls_user_login").focus();
        return false;
    }
    if (cls_pass_login == "") {
        alert("Mật khẩu đăng nhập không được để trống?");
        $(".cls_pass_login").focus();
        return false;
    }
    $(".cls_pass_login").val(MD5(auto_key_pass+cls_pass_login));
    send_login     = 1;
    $(".img_loadding_ad").show();
    $("#form_login_ad").submit();
};
function CHECK_email_lg(email) {
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!regex.test(email)) {
        return false;
    }
    return true;
}

function LAYMK_admin() {
    if ($("#qmk_email").val().trim() == '') {
        $("#qmk_email").focus();
        alert("Nhập địa chỉ email!");
    }
    else if (!CHECK_email_lg($("#qmk_email").val().trim())) {
        $("#qmk_email").focus();
        alert("Địa chỉ email không hợp lệ!");
    }

    else if (send_mkad == 0) {
        $(".img_loadding_ad").show();
        send_mkad = 1;
        $("#form_login_ad").submit();
    }
}
function reset_capcha_js(){
    send_login        = 1;
    send_mkad         = 1;
    $("#captcha").removeClass("jss_okcap");
    $('.admindangnhap').prop("disabled", true);
    $(".refreshIcon").trigger("click");
}
var captcha = sliderCaptcha({
    id: 'captcha',
    repeatIcon: 'fa fa-redo',
    onSuccess: function () {
        send_login = 0;
        send_mkad  = 0;
        $("#captcha").addClass("jss_okcap");
        $('.admindangnhap').prop("disabled", false);
        $.ajax({
            type: "POST",
            url: "index.php",
            data: {
                "ajax_action": "get_ajax_capcha"
            },
            success: function(data) {
                $(".js_capcha").val(data);
            }
        });
    }
});