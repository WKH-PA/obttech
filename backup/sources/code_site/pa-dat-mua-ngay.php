<?php
  $rows = LAY_baiviet(2, 1, "`id` = '".@$_GET['id']."'");
  $rows = reset($rows);
?>
<div class="tuvanbaogia_popup pop-quotation">
  <div class="tuvanbaogia_popup pop-quotation">
  <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact_baogia" id="formnamecontact_baogia">
    <input type="hidden" name="send_lienhe">
    <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
    <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
    <input type="hidden" name="tieude_lienhe" value="<?=base64_encode($glo_lang['dat_mua_ngay']) ?>">
    <h3><?=$glo_lang['thong_tin_cong_ty'] ?></h3>
    <div class="contact">
        <div class="left">
          <li class="name">
            <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ten_cong_ty']) ?>">
            <input class="cls_data_check_form_bg" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ten_cong_ty'] ?> (*)" value=""  data-name="<?=$glo_lang['nhap_ten_cong_ty'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>
          </li>
          <li class="local">
            <input type="hidden" name="s_address_s" value="<?=base64_encode($glo_lang['dia_chi']) ?>">
            <input name="s_address" id="s_address" type="text" placeholder="<?=$glo_lang['dia_chi'] ?>" value=""/>
          </li>
          <li class="phone">
            <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
            <input class="cls_data_check_form_bg" data-rong="1"  name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
          </li>
          <li class="mail">
            <input type="hidden" name="s_email_s" value="<?=base64_encode($glo_lang['email']) ?>">
            <input class="cls_data_check_form_bg" data-email="1" name="s_email" id="s_email" type="text" placeholder="<?=$glo_lang['email'] ?>" value="" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>"/>
          </li>
          <li class="name">
            <input type="hidden" name="s_title_s" value="<?=base64_encode($glo_lang['nguoi_lien_he']) ?>">
            <input  name="s_title" id="s_title" type="text" placeholder="<?=$glo_lang['nguoi_lien_he'] ?>" value="" />
          </li>
          <div class="clr"></div>
          <h3><?=$glo_lang['yeu_cau_san_pham'] ?></h3>
          <li class="subject">
            <input type="hidden" name="group_form_send_1_s" value="<?=base64_encode($glo_lang['cart_ma_sp']) ?>">
            <input name="group_form_send_1" type="text" value="<?=SHOW_text($rows['p1']) ?>" placeholder="<?=$glo_lang['cart_ma_sp'] ?>" />
          </li>
          <li class="subject">
            <input type="hidden" name="group_form_send_2_s" value="<?=base64_encode($glo_lang['cart_ten_sp']) ?>">
            <input name="group_form_send_2" type="text" value="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>" placeholder="<?=$glo_lang['cart_ten_sp'] ?>"/>
          </li>
          <li class="subject">
            <input type="hidden" name="group_form_send_3_s" value="<?=base64_encode($glo_lang['cart_qty']) ?>">
            <input name="group_form_send_3" type="text" placeholder="<?=$glo_lang['cart_qty'] ?>" value="" />
          </li>
          <li class="">
            <?=$glo_lang['yeu_cau_giao_hang'] ?>: 
            <div class="dv-day">
                <select id="day" onchange="add_ngay_dang()">
                  <option value="">-- <?=$glo_lang['day'] ?> --</option>
                  <?php for ($i=1; $i <= 31; $i++) {  ?>
                    <option value="<?=$i ?>">-- <?=$i ?> --</option>
                  <?php } ?>
                </select>
                <select id="month" onchange="add_ngay_dang()">
                  <option value="">-- <?=$glo_lang['month'] ?> --</option>
                  <?php for ($i=1; $i <= 12; $i++) {  ?>
                    <option value="<?=$i ?>">-- <?=$i ?> --</option>
                  <?php } ?>
                </select>

                <select id="year" onchange="add_ngay_dang()">
                  <option value="">-- <?=$glo_lang['year'] ?> --</option>
                  <?php for ($i=date("Y", time()); $i <= (date("Y", time()) + 5); $i++) {  ?>
                    <option value="<?=$i ?>">-- <?=$i ?> --</option>
                  <?php } ?>
                </select>
                <div class="clr"></div>
                <input type="hidden" name="group_form_send_4_s" value="<?=base64_encode($glo_lang['yeu_cau_giao_hang']) ?>">
                <input type="hidden"  name="group_form_send_4" id="js_load_date" type="text" value="" />
                <script>
                  function add_ngay_dang(){
                    var day = $("#day").val();
                    var month = $("#month").val();
                    var year = $("#year").val();
                    $("#js_load_date").val(day+"/"+month+"/"+year);
                  }
                </script>
            </div>
          </li>

          <li class="mess">
            <input type="hidden" name="s_message_s" value="<?=base64_encode($glo_lang['ghi_chu']) ?>">
            <textarea class="cls_data_check_form_bg" name="s_message" id="s_message" cols="" rows="" placeholder="<?=$glo_lang['ghi_chu'] ?>" data-msso="<?=$glo_lang['nhap_noi_dung'] ?>"></textarea>
          </li>
          <li class="code">
            <div class="col-md row-frm">
              <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 41px; width: auto; cursor: pointer; position: relative; top: 2px; right: 2px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
              <input class="cls_data_check_form_bg form-control" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="" onFocus="if (this.value == '<?=$glo_lang['ma_bao_ve'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['ma_bao_ve'] ?> (*)';}" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
            </div>
          </li>
        </div>
      <div class="clr"></div>
      <a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact_baogia', '.cls_data_check_form_bg')" style="cursor:pointer"><?=$glo_lang['gui'] ?> <img src="images/loading2.gif" class="ajax_img_loading"></a>
    </div>
  </form>
</div>
</div>