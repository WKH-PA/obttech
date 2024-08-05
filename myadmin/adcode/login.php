<?php
    $_SESSION['capcha_slider'] = strtolower(RANDOM_chuoi(6));
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Đăng nhập :: Hệ thống quản trị</title>
    <base href="<?=$fullpath."/myadmin/"  ?>">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/admin.min.css">
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="<?=$favico ?>"/>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="js/md5.js"></script>
    <link href="plugins/capcha-slider/slidercaptcha.min.css?v=2" rel="stylesheet" />
</head>
<body class="hold-transition login-page">
<div class="login-box" style="position: relative;">
    <div style="position: absolute; top: 80px; left:-234px; width: 239px; height: 125px; background-color: white; border-radius: 5px; padding: 10px; border: 5px solid #ccc; border-right:0">
        <a href="https://web30s.vn" target="_blank"><img src="images/logo_web30s.png" style="margin-top: 10px"></a>
    </div>
    <div class="dv-right-login">
        <p class="tit">Hỗ trợ 24/7: <a href="tel:1900 9477">1900 9477</a></p>
        <p>KD Hồ Chí Minh: <a href="tel:028 6256 3737">028-73073737</a></p>
        <p>KD Hà Nội: <a href="tel:024 7307 3737">024-73073737</a></p>
        <p>Email: <a href="mailto:web@pavietnam.vn">web@pavietnam.vn</a></p>
    </div>
    <div class="login-box-body" style=" border-radius: 10px; border: 5px solid #ccc">
        <p class="login-box-msg" style="font-size: 14px; font-weight:bold">HỆ THỐNG QUẢN TRỊ WEBSITE</p>
        <form name="TheForm" method="post" action="<?=$fullpath_admin ?>index.php?module=login" id="form_login_ad">
            <input type="hidden" name="sub_botton_ad" value="login">
            <div class="form-group has-feedback">
                <input type="text" class="form-control cls_user_login" placeholder="Tên đăng nhập" name="username" id='admintentruycap' readonly="readonly" onfocus="this.removeAttribute('readonly');">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control cls_pass_login" placeholder="Mật khẩu" name="passmd5" id='adminmatkhau'>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="slidercaptcha card">
                <div class="card-body">
                    <div id="captcha"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <div class="checkbox icheck">
                        <label>
                            <a href="index.php?module=forgot-password">Quên mật khẩu ?</a>
                        </label>
                    </div>
                </div>
                <div class="col-xs-6">
                    <button type="button" name="admindangnhap" class="admindangnhap btn btn-primary btn-block btn-flat" disabled="disabled" onclick="form_dangnhap('<?=$auto_key_pass?>')">ĐĂNG NHẬP <img src="images/loading2.gif" style="height: 14px; display: none" class="img_loadding_ad"></button>
                    <input type="hidden" id="<?=strtolower(RANDOM_chuoi(6)) ?>" name="js_capcha" class="js_capcha" value="">
                    <input type="hidden" id="<?=$_SESSION['capcha_slider'] ?>" name="js_capcha_v" class="js_capcha_v" value="">
                </div>
            </div>
        </form>
    </div>
    <p style="text-align: center; font-weight: bold; padding-top: 10px; color: #999">Thiết kế và phát triển bởi P.A Việt Nam</p>
</div>
<script src="plugins/capcha-slider/longbow.slidercaptcha.min.js?v=2"></script>
<script type="text/javascript" src="js/me_login.js?v=2"></script>
</body>
</html>