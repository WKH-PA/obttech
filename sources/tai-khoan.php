<?php
    if(!isset($_SESSION['id'])) {
        LOCATION_js($fullpath.'/dang-ky/');
        exit();
    }

  $sql = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `id` = '".$_SESSION['id']."' AND `phanquyen` = 0 LIMIT 1");
  $row            = mysqli_fetch_array($sql);
  foreach ($row as $key => $value) {
    ${$key}        = $value;
  }

  $bre = $glo_lang['tai_khoan'];

?>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a> <span>/</span> <a><?=$bre ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="c-tin-ad">
<?php include _source."left_thanh_vien.php"; ?>
<div class="right-text-ad">
<div class="left-text-full-w left-text">
<h2><?=$glo_lang['thong_tin_ca_nhan'] ?></h2>
<h6></h6>
<form action="" method="post" name="dangkythanhvien" id="dangkythanhvien" enctype="multipart/form-data">
  <div class="row-frm">
    <p><?=$glo_lang['email'] ?> (*)</p>
    <input type="text" value="<?=$email ?>"   class="form-control" readonly="readonly">
  </div>
  <div class="clr"></div>
  <div class="row-frm">
    <p><?=$glo_lang['ho_va_ten'] ?> (*)</p>
    <input type="text" name="fullname_dk" class="form-control cls_data_check_form_check_dangky"  data-rong="1" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>" value="<?=$hoten ?>">
  </div>
  <div class="row-frm">
    <p><?=$glo_lang['so_dien_thoai'] ?> (*)</p>
    <input type="text" id="phone_dk" class="form-control cls_data_check_form_check_dangky" name="phone_dk"  data-rong="1" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" value="<?=$sodienthoai ?>">
  </div>
  <div class="row-frm">
    <p><?=$glo_lang['dia_chi'] ?></p>
    <input type="text" name="diachi" class="form-control " value="<?=$diachi ?>">
  </div>

  <p>
    <a class="cur" onClick="check_capnhat()"><?=$glo_lang['cap_nhat'] ?> <img class="img_load_from_dktv" src="images/loading2.gif"></a>
  </p>

</form>

</div>
<div class="clr"></div>
</div>
<script>
    var send_d = 0;
    function check_capnhat() {
      var check = 0;
      $(".cls_data_check_form_check_dangky").each(function(){
          var val     = $(this).val().trim();
          var id      = $(this).attr('id');
          var rong    = $(this).attr('data-rong');
          var phone   = $(this).attr('data-phone');
          var email   = $(this).attr('data-email');
          var d_check = $(this).attr('data-check');
          var place   = $(this).attr('placeholder');
          var khac    = $(this).attr('data-khac');

          var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
          if(rong == 1 && (val == "" || val == place)){
              alert($(this).attr('data-msso'));
              $(this).focus();
              $(".ajax_img_loading").hide();
              check = 1;
              send_d = 0;
              return false;
          } 
          else if(email == 1 && !regex.test(val) && val != ""){
              alert($(this).attr('data-msso1'));
              $(this).focus();
              $(".ajax_img_loading").hide();
              check = 1;
              send_d = 0; 
              return false;
          }
          else if(phone == 1 && !CHECK_phone(this) && val != ""){
              alert($(this).attr('data-msso1'));
              $(this).focus();
              $(".ajax_img_loading").hide();
              check = 1;
              send_d = 0; 
              return false;
          }
          else if(d_check == 1 && !$(this).is(":checked")){
              alert($(this).attr('data-msso'));
              $(this).focus();
              $(".ajax_img_loading").hide();
              check = 1;
              send_d = 0; 
              return false;
          }
          else if(khac == 1 && val != $($(this).attr('id-khac')).val()){
              alert($(this).attr('data-msso1'));
              $(this).focus();
              $(".ajax_img_loading").hide();
              check = 1;
              send_d = 0; 
              return false;
          }
      });

      if(check == 0){
        if(send_d == 0){
            send_d = 1;
            $(".img_load_from_dktv").show();
            var dataString = $('#dangkythanhvien').serializeArray();
            $.ajax({
                type: "POST",
                url: "<?=$full_url."/check-doi-thong-tin/" ?>",
                data: dataString,
                success: function(response)
                {
                  console.log(response)
                  alert("<?=$glo_lang['cap_nhat_tai_khoan_thanh_cong']  ?>");
                  window.loacation.reload();
                  $(".img_load_from_dktv").hide();
                  send_d = 0;
                }
            });
          }
      }
    }

    $('.form-control').keypress(function(event){
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
          check_dangky();
        }
    });
</script>