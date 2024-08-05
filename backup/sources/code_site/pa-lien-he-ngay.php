<?php
  $rows = LAY_baiviet(8, 1, "`id` = '".@$_GET['id']."'");
  $rows = reset($rows);
?>
<div class="dv-lienhe-popup contact">
  <ul>
    <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact_baogia" id="formnamecontact_baogia">
    <h2 class="tiltle"><?=$glo_lang['thong_tin_ung_tuyen'] ?></h2>
    <input type="hidden" name="send_lienhe">
    <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
    <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
    <input type="hidden" name="tieude_lienhe" value="<?=base64_encode($glo_lang['thong_tin_ung_tuyen']) ?>">

    <li>
      <div class="col-md row-frm">
        <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten']) ?>">
        <input class="form-control cls_data_check_form_bg" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="" data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>
      </div>
    </li>
    <li>
      <div class="col-md row-frm" style="display: none">
        <input type="hidden" name="s_address_s" value="<?=base64_encode($glo_lang['text_vitri']) ?>">
        <input name="s_address" id="s_address" type="text" value="<?=@$rows['tenbaiviet_'.$lang] ?>" />
      </div>
    </li>
    <li>
      <div class="col-md row-frm">
        <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
        <input class="form-control cls_data_check_form_bg" data-rong="1"  name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
      </div>
    </li>
    <li>
      <div class="col-md row-frm">
        <input type="hidden" name="s_email_s" value="<?=base64_encode($glo_lang['email']) ?>">
        <input class="form-control cls_data_check_form_bg" data-rong="1" data-email="1" name="s_email" id="s_email" type="text" placeholder="<?=$glo_lang['email'] ?> (*)" value="" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>"/>
      </div>
    </li>
    <div class="input-text file-up ani-item on-show" style="animation-delay: 1150ms;">
      <input id="inputfile" type="file" name="inputfile" onchange="pa_previewImg(event);" >
      <span class="file-name"><?=$glo_lang['file_hs'] ?></span><span class="file-mark"><?=$glo_lang['chon_file'] ?></span>
    </div>
    <!-- <li>
      <div class="col-md col-md-3 row-frm">
        <input type="hidden" name="s_message_s" value="<?=base64_encode($glo_lang['noi_dung']) ?>">
        <textarea class="form-control form-control_3" data-rong="1" name="s_message" id="s_message" cols="" rows="" placeholder="<?=$glo_lang['noi_dung'] ?>" data-msso="<?=$glo_lang['nhap_noi_dung'] ?>"></textarea>
      </div>
    </li> -->
    <li>
      <div class="col-md row-frm">
        <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 41px; width: auto; cursor: pointer; position: relative; top: 2px; right: 2px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
        <input class="cls_data_check_form_bg form-control" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
      </div>
    </li>
    <div class="clr"></div>

    <div class="clr"></div>
  </form>
  <p class="read_more"><a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact_baogia', '.cls_data_check_form_bg')" class="cur button"><?=$glo_lang['nop_don'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_lh"></a></p>
  </ul>
</div>
<script>
function pa_previewImg(event, id, input_icon,theloai){
    var files = document.getElementById("inputfile").files; 
    $(".file-name").html(event.target.files[0]['name']);
  };
</script>