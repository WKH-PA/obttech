<?php include _source."banner_top.php";?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(count($banner_top)) {
?>
<section class="awe-section-2">
  <section id="ve-chung-toi" class="section section_about clearfix">
  <div class="pagewrap">
    <h1 class="wow fadeInDown"><?=$glo_lang['what_we_do'] ?></h1>
    <div class="col-md-12 wow fadeInUp">
      <?php foreach ($banner_top as $rows) { ?>
      <div class="col-md-4">
        <div class="premium-icon">
          <div class="premium-icon-box">
            <i class="<?=SHOW_text($rows['fontawesome']) ?>"></i></div>
              <div class="premium-icon-content">
                <div class="premium-icon-box-title-container">
                <h3 class="premium-icon-box-title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
            </div>
            <div class="premium-icon-box-content">
              <?=SHOW_text($rows['noidung_'.$lang]) ?>
              <p><a <?=full_href($rows) ?>><?=$glo_lang['learn_more'] ?> <i class="fa fa-caret-right"></i></a></p>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
      <div class="clr"></div>
    </div>

    <div class="clr"></div>
  </div>
</section>
</section>
<?php } ?>

<?php
  $banner_top = LAY_banner_new("`id_parent` = 32");
  if(count($banner_top)) {
?>
<section class="awe-section-3">
  <div class="pagewrap">
    <h2 class="wow fadeInDown"><?=$glo_lang['work_with_us'] ?></h2>
    <div class="col-md-12 wow fadeInLeft">
      <?php
        foreach ($banner_top as $rows) {
      ?>
      <div class="col-md-4">
        <div class="premium-icon">
            <div class="premium-icon-content">
                <div class="premium-icon-box-title-container">
                <h3 class="premium-icon-box-title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
            </div>
            <div class="premium-icon-box-content">
              <?=SHOW_text($rows['noidung_'.$lang]) ?>
            </div>
          </div>
        </div>
      </div>
      <?php } ?>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</section>
<?php } ?>
<?php
  $rows = LAY_banner_new("`id_parent` = 26", 1);
  if(is_array($rows)) {
?>
<section class="awe-section-4">
  <div class="pagewrap">
    <div class="col-md-12 wow fadeInUp">
      <div class="col-md-6">
        <p><?=SHOW_text($rows['mota_'.$lang]) ?></p>
      </div>
      <div class="col-md-6">
        <h4><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
        <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact2" id="formnamecontact2">
          <input type="hidden" name="send_lienhe">
          <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
          <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
          <input type="hidden" name="tieude_lienhe" value="<?=base64_encode($rows['tenbaiviet_'.$lang]) ?>">
        <div class="contact-topics ">
          <input type="hidden" name="s_title_s" value="<?=base64_encode($glo_lang['tieu_de']) ?>">
            <select name="s_title">
              <?php
                $noidung = strip_tags($rows['noidung_'.$lang]);
                $noidung = explode("-", $noidung);
                foreach ($noidung as $nkey) {
                  if(trim($nkey) == "") continue;
              ?>
              <option value="<?=$nkey ?>"><?=$nkey ?></option>
              <?php } ?>
            </select>
        </div>
      <div class="left">
        <li class="name">
          <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten']) ?>">
          <input class="cls_data_check_form" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="<?=$glo_lang['ho_va_ten'] ?> (*)" onFocus="if (this.value == '<?=$glo_lang['ho_va_ten'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['ho_va_ten'] ?> (*)';}" data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>

        </li>
        <li class="phone">
          <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
          <input class="cls_data_check_form" data-rong="1"  name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="<?=$glo_lang['so_dien_thoai'] ?> (*)" onFocus="if (this.value == '<?=$glo_lang['so_dien_thoai'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['so_dien_thoai'] ?> (*)';}" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
        </li>
        <li class="code">
          <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 41px; width: auto; cursor: pointer; position: relative; top: 2px; right: 2px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
          <input class="cls_data_check_form" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value="<?=$glo_lang['ma_bao_ve'] ?> (*)" onFocus="if (this.value == '<?=$glo_lang['ma_bao_ve'] ?> (*)'){this.value='';}" onBlur="if (this.value == '') {this.value='<?=$glo_lang['ma_bao_ve'] ?> (*)';}" data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
        </li>
      </div>
       <a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact2', '.cls_data_check_form')" style="cursor:pointer" class="button"><?=$glo_lang['gui']  ?> <img src="images/loading2.gif" class="ajax_img_loading"></a>
       <!-- <input type="hidden" class="id_token" name="id_token"value="<?=$_SESSION['token'] = md5(RANDOM_chuoi(5)) ?>"> -->
      <div class="clr"></div>
    </form>

    </div>
  </div>
  <div class="clr"></div>
  </div>
</section>
<?php } ?>