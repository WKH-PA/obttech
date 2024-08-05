<?php 
   $bre = $glo_lang['dang_ky'];
   if(isset($_SESSION['id'])) {
      LOCATION_js($full_url);
      exit();
    }
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
<h2><?=$glo_lang['title_dang_ky'] ?></h2>
<h6>
  <?php
    $dangky = $glo_lang['title_dang_ky_mo_ta'];
    $dangky = str_replace("[link]", '<a href="'.$full_url."/dang-nhap".'">', $dangky);
    echo str_replace("</link>", '</a>', $dangky);
  ?></h6>
<form action="" method="post" name="dangkythanhvien" id="dangkythanhvien">
    <input type="text" name="email_dk" class="form-control cls_data_check_form_check_dangky" data-rong="1" data-email="1" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>" placeholder="<?=$glo_lang['email'] ?> (*)">
    <input type="password" name="pass_dk" class="form-control cls_data_check_form_check_dangky" id="pass_dk"  data-rong="1" data-msso="<?=$glo_lang['login_nhap_mat_khau'] ?>" placeholder="<?=$glo_lang['login_pass'] ?> (*)">
    <input type="password" name="repass_dk" class="form-control cls_data_check_form_check_dangky" id="repass_dk" id-khac="#pass_dk" data-rong="1" data-khac="1" data-msso="<?=$glo_lang['vui_long_nhap_lai_mat_khau'] ?>" data-msso1="<?=$glo_lang['nhap_lai_mat_khau_khong_chinh_xac'] ?>" placeholder="<?=$glo_lang['register_repass'] ?> (*)">
    <input type="text" name="fullname_dk" class="form-control cls_data_check_form_check_dangky"  data-rong="1" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)">
    <input type="text" id="phone_dk" class="form-control cls_data_check_form_check_dangky" name="phone_dk"  data-rong="1" data-phone="1" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>"  data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)">
    <input type="text" name="diachi" class="form-control cls_data_check_form_check_dangky" data-rong="1" data-msso="<?=$glo_lang['nhap_dia_chi'] ?>" placeholder="<?=$glo_lang['dia_chi'] ?> (*)">
    <div class="col-md-4 row-frm row-frm-mbv">
      <span class="span_mbv">
        <img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i>
      </span>
      <input class="form-control cls_data_check_form_check_dangky" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
    </div>
    <div class="col-md-4 row-frm">
      <label class="checkbox">
        <input type="checkbox" class="cls_data_check_form_check_dangky" data-check="1" data-msso="<?=$glo_lang['ban_chua_dong_y_thoa_thuan'] ?>" checked="checked">
        <?=$glo_lang['dieu_khoan_dk_thanh_vien'] ?></label>
    </div>
    <p><a class="cur" onClick="check_dangky()"><?=$glo_lang['dang_ky'] ?> <img class="img_load_from_dktv" src="images/loading2.gif"></a></p></div>
</form>
<div class="social-login social-login-container" style="display: block;">
  <a href="<?=$full_url."/?login=fb" ?>">
    <span class="scl-button scl-button-default scl-button-facebook" style="background-color:#4267b2;">
      <svg xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M22.688 0H1.323C.589 0 0 .589 0 1.322v21.356C0 23.41.59 24 1.323 24h11.505v-9.289H9.693V11.09h3.124V8.422c0-3.1 1.89-4.789 4.658-4.789 1.322 0 2.467.1 2.8.145v3.244h-1.922c-1.5 0-1.801.711-1.801 1.767V11.1h3.59l-.466 3.622h-3.113V24h6.114c.734 0 1.323-.589 1.323-1.322V1.322A1.302 1.302 0 0 0 22.688 0z"></path></svg>
      <span><?=$glo_lang['dang_ky_bang_facebook'] ?></span>
    </span>
  </a>
  <a href="<?=$full_url."/?login=google" ?>">
  <span class="scl-button scl-button-default scl-button-google" style="background-color:#dc4e41;">
  <svg xmlns="http://www.w3.org/2000/svg"><path fill="#fff" d="M7.636 11.545v2.619h4.331c-.174 1.123-1.309 3.294-4.33 3.294-2.608 0-4.735-2.16-4.735-4.822 0-2.661 2.127-4.821 4.734-4.821 1.484 0 2.477.632 3.044 1.178l2.073-1.997C11.422 5.753 9.698 5 7.636 5A7.63 7.63 0 0 0 0 12.636a7.63 7.63 0 0 0 7.636 7.637c4.408 0 7.331-3.098 7.331-7.462 0-.502-.054-.884-.12-1.266h-7.21zm16.364 0h-2.182V9.364h-2.182v2.181h-2.181v2.182h2.181v2.182h2.182v-2.182H24"></path></svg><span><?=$glo_lang['dang_ky_bang_google'] ?></span>
  </span>
</a>
</div>
</div>
<div class="clr"></div>
</div>

<script>
    var send_d = 0;
    function check_dangky() {
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
          // else if(phone == 1 && !CHECK_phone(this) && val != ""){
          //     alert($(this).attr('data-msso1'));
          //     $(this).focus();
          //     $(".ajax_img_loading").hide();
          //     check = 1;
          //     send_d = 0; 
          //     return false;
          // }
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
                url: "<?=$full_url."/check-dang-ky/" ?>",
                data: dataString,
                success: function(response)
                {
                  console.log(response);
                  var obj = jQuery.parseJSON(response);
                  if(obj.error == 10){
                    alert("<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>");
                    $("#mabaove").focus();
                  }
                  else if(obj.error > 0){
                    alert("<?=$glo_lang['email_da_duoc_dang_ky']  ?>");
                    $("#email_dk").focus();
                  }else{
                    alert("<?=$glo_lang['dang_ky_tai_khoan_thanh_cong']  ?>");
                    window.location.href = full_url+'/dang-nhap';
                  }
                  $("#img_contact_cap").attr("src","<?=$full_url ?>/load-capcha/");
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