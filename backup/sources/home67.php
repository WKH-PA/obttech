<?php include _source."banner_top.php";?>
<?php
  $sp_step = LAY_step(2, 1);
  $sp_baiviet = LAY_danhmuc(2, 20, "`opt` = 1");
  // $sp_baiviet = LAY_baiviet(2, 10, "`opt` = 1");
?>
<div class="dv-home-dichvu">
  <div class="pagewrap">
    <h2 class="tiltle wow flipInX"><span><?=SHOW_text($sp_step['tenbaiviet_'.$lang]) ?></span></h2>
    <div class="dv-home-dv flex">
      <?php foreach ($sp_baiviet as $rows) { ?>
      <div class="c-item">
        <a <?=full_href($rows) ?>>
          <div class="img-thumbnail">
            <?=full_img($rows) ?>
          </div>
          <div class="c-box-title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></div>
        </a>
      </div>
      <?php } ?>
    </div>
    <div class="clr"></div>
  </div>

  <div class="clr"></div>
</div>
<?php
  $noidung= LAYTEXT_rieng(82);
  if(is_array($noidung)){
?>
<section class="dv-home-gioithieu" style="background: url(<?=full_src($noidung, '') ?>) center center fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <h2 class="tiltle wow flipInX"><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2>
    <div class="dv-homeright">
      <iframe class="iframe_load" width="100%" height="250" iframe-src="https://www.youtube.com/embed/<?=GET_ID_youtube($noidung['p1_'.$lang]) ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      <p class="read_more"><a class="wow fadeInUp" href="<?=$full_url."/video" ?>"><?=$glo_lang['video_gioi_thieu'] ?><i class="fa fa-caret-right"></i></a></p>
    </div>
    <div class="dv-homeleft">
      <div class="p-brief wow fadeInDown">
        <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
      <p class="read_more"><a class="wow fadeInUp" <?=full_href($noidung) ?>><?=$glo_lang['ve_chung_toi'] ?><i class="fa fa-caret-right"></i></a></p>
    </div>
    <div class="clr"></div>
  </div>
</section>
<?php } ?>
<?php
  $sp_step = LAY_step(3, 1);
  $sp_baiviet = LAY_danhmuc(3, 20, "`opt` = 1");
  // $sp_baiviet = LAY_baiviet(3, 10, "`opt` = 1");
?>
<div class="dv-home-linhkien">
  <div class="pagewrap">
    <h5 class="tiltle wow flipInX"><?=SHOW_text($sp_step['tenbaiviet_'.$lang]) ?></h5>
    <div class="tt_page">
      <div id="sukien_slide">
        <!--  -->
        <?php $data = array("1","2","2","3","4","5") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
          <?php
            foreach ($sp_baiviet as $rows) {
          ?>
          <div class="item">
            <div class="new_id_bs">
              <li><a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
              <ul>
                <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
              </ul>
              <div class="clr"></div>
            </div>
          </div>
          <?php } ?>
        </div>
        <!--  -->
      </div>
    </div>
    <div class="clr"></div>
    <p class="read_more"><a class="wow fadeInUp" <?=full_href($sp_step) ?>><?=$glo_lang['xem_them'] ?><i class="fa fa-caret-right"></i></a></p>
  </div>
</div>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 32");
  if(count($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 27", 1);
?>
<div class="newsletter_home" style="background: url(<?=full_src($hinhanh, '') ?>) center center fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <div class="dv-thongso">
      <h2 class="tiltle wow flipInX"><?=$glo_lang['mot_so_su_thu_vi'] ?></h2>
      <div class="menu-so1">
         <?php
            foreach ($banner_top as $rows) {
          ?>
        <div class="menu_style">
          <div class="so1"><i class="<?=SHOW_text($rows['fontawesome']) ?>"></i></div>
          <div class="count"><?=SHOW_text($rows['mota_'.$lang]) ?></div>
          <p><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></p>
        </div>
        <?php }?>
        <div class="clr"></div>
      </div>
    </div>
    <div class="contact">
      <h2 class="tiltle wow flipInX"><?=$glo_lang['yeu_cau_bao_gia'] ?></h2>
      <form action="" class="formBox no_box " method="post" accept-charset="UTF-8" name="formnamecontact2" id="formnamecontact2">
      <input type="hidden" name="send_lienhe">
      <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
      <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
      <input type="hidden" name="tieude_lienhe" value="<?=!empty($thongtin_lienhe) ? $thongtin_lienhe : base64_encode($glo_lang['thongtin_lienhe']) ?>">
      <ul>
        <div class="form-group qtext col-12">
          <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten']) ?>">
          <input class="cls_data_check_form form-control" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="<?=@$hoten ?>"  data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>
        </div>
        <div class="form-group qtext col-6">
          <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
          <input class="cls_data_check_form form-control" data-rong="1" name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="<?=@$sodienthoai ?>" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
        </div> 
        <div class="form-group qtext col-6">
          <input type="hidden" name="s_email_s" value="<?=base64_encode($glo_lang['email']) ?>">
          <input class="cls_data_check_form form-control" data-rong="1" data-email="1" name="s_email" id="s_email" type="text" placeholder="<?=$glo_lang['email'] ?> (*)" value="" data-msso="<?=$glo_lang['chua_nhap_dia_chi_email'] ?>" data-msso1="<?=$glo_lang['dia_chi_email_khong_hop_le'] ?>"/>
        </div>
        <div class="form-group qtext col-6">
          <input type="hidden" name="s_address_s" value="<?=base64_encode($glo_lang['vui_long_lua_chon']) ?>">
          <select  name="s_address" id="s_address" class="form-control">
            <option value=""><?=($glo_lang['vui_long_lua_chon']) ?></option>
            <?php
              $vui_long_lua_chon = explode("==>", $glo_lang['vui_long_lua_chon_text']);
              foreach ($vui_long_lua_chon as $k) {
                if(trim($k) == "") continue;
            ?>
            <option value="<?=trim($k) ?>"><?=trim($k) ?></option>
            <?php } ?>
          </select>
        </div>
        <div class="form-group qtext col-6">
          <span style="line-height: 0;padding-right: 0;"><img src="<?=$full_url."/load-capcha/" ?>" alt="CAPTCHA code" style="height: 41px; width: auto; cursor: pointer; position: relative; top: 2px; right: 2px;" onclick="$(this).attr('src','<?=$full_url."/load-capcha/" ?>')" id="img_contact_cap"><i class="fa fa-refresh" style="position: absolute; right: 3px; bottom: 3px; font-size: 10px; color: #666;" onclick="$('#img_contact_cap').attr('src','<?=$full_url."/load-capcha/" ?>')"></i></span>
          <input class="cls_data_check_form form-control" data-rong="1" name="mabaove" id="mabaove" type="text" placeholder="<?=$glo_lang['ma_bao_ve'] ?> (*)" value=""  data-msso="<?=$glo_lang['vui_long_nhap_ma_bao_ve'] ?>"/>
        </div>
        <div class="clr"></div>
        <div class="form-group qtext col-12">
          <input type="hidden" name="s_message_s" value="<?=base64_encode($glo_lang['noi_dung_lien_he']) ?>">
           <textarea class="cls_data_check_form form-control contact_lbl" data-rong="1" name="s_message" id="s_message" cols="" rows="" placeholder="<?=$glo_lang['noi_dung_lien_he'] ?>  (*)" data-msso="<?=$glo_lang['nhap_noi_dung'] ?>"></textarea>
           <div class="clr"></div>
        </div>
        <p class="read_more">
          <a onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact2', '.cls_data_check_form')" style="cursor:pointer"><?=$glo_lang['gui_ngay']  ?> <i class="fa fa-caret-right"></i><img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_lh"></a>
          <div class="clr"></div>
        </p>
      </ul>
      <div class="clr"></div>
    </form>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(5, 12, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="dv-home-dichvu dv-home-tintuc">
  <div class="pagewrap">
    <h6 class="tiltle wow flipInX"><?=$glo_lang['tin_tuc_su_kien'] ?></h6>
    <p class="p-brief"><?=$glo_lang['tin_tuc_su_kien_mo_ta'] ?></p>
    <div class="dv-home-lh ">
      <!--  -->
      <?php $data = array("1","1","2","2","3","3"); ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
      <?php
        foreach ($sp_baiviet as $rows) {
      ?>
      <div class="item">
        <div class="dv-gr-lh">
          <div class="img">
            <a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a>
          </div>
          <div class="text-left">
            <a <?=full_href($rows) ?>><h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3></a>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <div class="clr"></div>
          </div>
        </div>
      </div>
      <?php } ?>
      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>