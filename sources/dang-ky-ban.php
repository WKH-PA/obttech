
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>/</span><a><?=$glo_lang['dang_ky_ban'] ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="right_contact right_contact_1">
    <h2 class="title_home title_home_1 wow flipInY"><?=$glo_lang['thong_tin_du_an_can_ban'] ?></h2>
    <!-- <p>Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing ...</p> -->
    <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact2" id="formnamecontact2">
    <input type="hidden" name="send_lienhe">
    <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
    <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
    <input type="hidden" name="tieude_lienhe" value="<?=base64_encode($glo_lang['dang_ky_ban']) ?>">
    <div class="contact">
      <h4 class="title-form"><?=$glo_lang['thong_tin_co_ban'] ?></h4>
      <div>
          <div class="left">
            <li class="names">
              <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten_lien_he']) ?>">
              <input class="cls_data_check_form" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten_lien_he'] ?> (*)" value="" data-msso="<?=$glo_lang['nhap_ho_ten_lien_he'] ?>"/>
            </li>
            <li class="duan">
              <input type="hidden" name="s_email_s" value="<?=base64_encode($glo_lang['ten_du_an']) ?>">
              <input class="cls_data_check_form" data-rong="1" name="s_email" id="s_email" type="text" placeholder="<?=$glo_lang['ten_du_an'] ?> (*)" value="" data-msso="<?=$glo_lang['chua_nhap_ten_du_an'] ?>" />
            </li>
            <li class="quymo">
              <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['quy_mo']) ?>">
              <input class="cls_data_check_form" data-rong="1"  name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['quy_mo'] ?> (*)" value="" data-msso="<?=$glo_lang['nhap_quy_mo'] ?>" />
            </li>
            <li class="locals">
              <input type="hidden" name="s_address_s" value="<?=base64_encode($glo_lang['dia_chi']) ?>">
              <input name="s_address" id="s_address" type="text" placeholder="<?=$glo_lang['dia_chi'] ?>" value=""/>
            </li>
            <li class="Price">
              <input type="hidden" name="s_title_s" value="<?=base64_encode($glo_lang['gia_ban_khong_bat_buoc']) ?>">
              <input  name="s_title" id="s_title" type="text" placeholder="<?=$glo_lang['gia_ban_khong_bat_buoc'] ?>" value=""/>
            </li>
          </div>
          <div class="right">
            <li class="messs">
              <input type="hidden" name="s_message_s" value="<?=base64_encode($glo_lang['thong_tin_phap_ly']) ?>">
              <textarea name="s_message" id="s_message" placeholder="<?=$glo_lang['thong_tin_phap_ly'] ?>"></textarea>
            </li>
            <li>
            <?php
              $loai_da = explode("|", $glo_lang['hinh_thuc_chuyen_nhuong']);
            ?>
            <input type="hidden" name="group_form_send_1_s" value="<?=base64_encode($loai_da[0]) ?>">
            <select name="group_form_send_1" id="group_form_send_1" class="form-control">
              <?php
                foreach ($loai_da as $key) {
                  if(trim($key) == "") continue;
              ?>
                  <option value="<?=trim($key) ?>"><?=trim($key) ?></option>
              <?php } ?>
            </select>
          </li>
          </div>
          <div class="clr"></div>
      </div>
      <h4 class="title-form"><?=$glo_lang['tai_hinh_anh'] ?></h4>

      <div class="spanButtonPlaceholder block-upload-item" id="upload-drop-zone"><p><?=$glo_lang['click_de_tai'] ?></p>
        <input type="file" name="inputfile" id="inputfile" style="position: absolute; right: 0px; top: 0px; font-family: Arial; font-size: 118px; margin: 0px; padding: 0px; cursor: pointer; opacity: 0;" onchange="pa_previewImg(event);">
      </div>

    </div>
    <li class="code code_li_dkb">
        <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 41px; width: auto; cursor: pointer; position: relative; top: 2px; right: 2px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
        <input class="cls_data_check_form" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
      </li>
      <div class="right formBox">
       
        <a onclick="RefreshFormMailContact(formnamecontact2)" style="cursor:pointer" class="button"><?=$glo_lang['lam_lai']  ?></a>
        <a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact2', '.cls_data_check_form')" style="cursor:pointer" class="button"><?=$glo_lang['gui']  ?><img src="images/loading2.gif" class="ajax_img_loading"></a>
        <div class="clr"></div>
      </div>
    </form>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<div class="clr"></div>
</div>
<script>
function pa_previewImg(event, id, input_icon,theloai){
    var files = document.getElementById("inputfile").files; 
    $(".dv-anh-chl").remove();
    $(".spanButtonPlaceholder").append('<div class="dv-anh-chl"><img src="'+URL.createObjectURL(event.target.files[0])+'"></div>');
  };
</script>