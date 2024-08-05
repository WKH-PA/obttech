<?php include _source."banner_top.php";?>
<?php
  $noidung= LAYTEXT_rieng(82);
  if(is_array($noidung)){
?>
<section class="dv-home">
  <div class="pagewrap">
    <div class="elementor-image dv-homeleft">
      <a <?=full_href($noidung) ?>><?=full_img($noidung, '') ?></a>
    </div>
    <div class="dv-homeright">
      <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
      <h2 class="tiltle"><?=SHOW_text($noidung['p1_'.$lang]) ?></h2>
      <div class="p-brief">
        <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</section>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 32", 1);
  if(is_array($banner_top)) {
    $data = array("1","2","3","4","5","5");
?>
<div class="dv-home-giaiphap">
  <div class="pagewrap">
    <h3><?=SHOW_text($banner_top['tenbaiviet_'.$lang]) ?></h3>
    <h2 class="tiltle"><?=SHOW_text($banner_top['mota_'.$lang]) ?></h2>
    <div class="p-brief">
      <?=SHOW_text($banner_top['noidung_'.$lang]) ?>
    </div>
    <div class="clr"></div>
    <div class="dv-home-gpleft">
      <ul>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          $banner = LAY_banner_new("`id_parent` = 26");
          foreach ($banner as $rows) {
        ?>
        <div class="item">
          <li>
            <div class="icon"><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></div>
            <span><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></span>
          </li>
        </div>
          <?php } ?>
        </div>
        <div class="clr"></div>
      </ul>
      <div class="clr"></div>
    </div>
    <div class="dv-home-gpright">
      <div class="img"><?=full_img($banner_top, '') ?></div>

      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>

<div class="dv-home-gioithieu">
  <div class="pagewrap">
  <h2 class="tiltle"><?=$glo_lang['ban_muon_vay_tien_bang'] ?></h2>
  <div id="pro_tabs">
    <ul class="listtabs flex">
      <?php
        $banner = LAY_banner_new("`id_parent` = 29");
        $i = 0;
        foreach ($banner as $rows) {
          $i++;
      ?>
      <li><a class="cur <?=$i == 1 ? "active" : "" ?> a_vaytien" onclick="SHOWHI_cls(this, '.a_vaytien', '.a_vaytien_gr_<?=$rows['id'] ?>', '.a_vaytien_gr')">
        <div class="dv-cont-lis">
          <div class="icon">
            <?=full_img($rows, '') ?>
          </div>
          <?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>
          </div>
        </a>
      </li>
      <?php } ?>
      <div class="clr"></div>
    </ul>
  </div>
    <div class="dv-home-gt">
    <div class="tab-content">
      <?php
        $i = 0;
        foreach ($banner as $rows) {
          $i++;
      ?>
      <div class="tab-item a_vaytien_gr a_vaytien_gr a_vaytien_gr_<?=$rows['id'] ?> <?=$i == 1 ? "active" : "" ?>">
        <div class="form-intro">
          <p><?=$glo_lang['nhap_thong_tin_dang_ky_vay'] ?></p>
          <div class="ndd">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
        </div>
      </div>
    <?php } ?>
    <div class="clr"></div>
  </div>
  <div class="wrap-form">
    <form action="" class="formBox no_box" method="post" accept-charset="UTF-8" name="formnamecontact2" id="formnamecontact2">
    <input type="hidden" name="send_lienhe">
    <input type="hidden" class="lang_ok" value="<?=$glo_lang['yeu_cau_cua_ban_da_duoc_gui'] ?>">
    <input type="hidden" class="lang_false" value="<?=$glo_lang['nhap_ma_bao_ve_chua_dung'] ?>">
    <input type="hidden" name="tieude_lienhe" value="<?=!empty($thongtin_lienhe) ? $thongtin_lienhe : base64_encode($glo_lang['ban_muon_vay_tien_bang']) ?>">

    <div class="form-group uk-first-column">
      <input type="hidden" name="s_fullname_s" value="<?=base64_encode($glo_lang['ho_va_ten']) ?>">
      <input class="cls_data_check_form" data-rong="1" name="s_fullname" id="s_fullname" type="text" placeholder="<?=$glo_lang['ho_va_ten'] ?> (*)" value="<?=@$hoten ?>"  data-name="<?=$glo_lang['ho_va_ten'] ?> (*)" data-msso="<?=$glo_lang['nhap_ho_ten'] ?>"/>

    </div>
    <div class="form-group uk-grid-margin uk-first-column">
      <input type="hidden" name="s_dienthoai_s" value="<?=base64_encode($glo_lang['so_dien_thoai']) ?>">
      <input class="cls_data_check_form" data-rong="1" name="s_dienthoai" id="s_dienthoai" type="text" placeholder="<?=$glo_lang['so_dien_thoai'] ?> (*)" value="<?=@$sodienthoai ?>" data-name="<?=$glo_lang['so_dien_thoai'] ?> (*)" data-msso="<?=$glo_lang['nhap_so_dien_thoai'] ?>" data-msso1="<?=$glo_lang['so_dien_thoai_khong_hop_le'] ?>"/>
    </div>
    <div class="form-group">
      <input type="hidden" name="group_form_send_1_s" value="<?=base64_encode($glo_lang['chon_tinh_thanh']) ?>">
      <input type="hidden" name="group_form_send_1" id="group_form_send_1" value="">
      <select id="n_tinhthanh" onchange="LOAD_tinhthanh(this, '#id_quanhuyen', '<?=$glo_lang['chon_quan_huyen'] ?>'); $('#group_form_send_1').val($('option:selected',this).text()); LOAD_pgd()">
        <option value="0"><?=$glo_lang['chon_tinh_thanh'] ?></option>
        <?php 
          $khuvuc              = LAY_khuvuc(0, "`id_parent` = 0");
          foreach ($khuvuc as $kv) {
        ?>
        <option value="<?=$kv['id'] ?>"><?=$kv['tenbaiviet_'.$lang] ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="form-group uk-grid-margin uk-first-column">
      <input type="hidden" name="group_form_send_2_s" value="<?=base64_encode($glo_lang['chon_quan_huyen']) ?>">
      <input type="hidden" name="group_form_send_2" id="group_form_send_2" value="">
      <select  id="id_quanhuyen" onchange="$('#group_form_send_2').val($('option:selected',this).text()); LOAD_pgd()">
        <option value="0"><?=$glo_lang['chon_quan_huyen'] ?></option>
      </select>
    </div>

    <div class="form-group uk-grid-margin">
      <input type="hidden" name="group_form_send_3_s" value="<?=base64_encode($glo_lang['chon_phong_giao_dich_gan_ban']) ?>">
      <select id="shop" name="group_form_send_3" class="js_phonggiaodich">
        <option value="0"><?=$glo_lang['chon_phong_giao_dich_gan_ban'] ?></option>
        <?php
          $baiviet = LAY_baiviet(10);
          foreach ($baiviet as $rows) { 
        ?>
        <option value="<?=$rows['tenbaiviet_'.$lang] ?>"><?=$rows['tenbaiviet_'.$lang] ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="form-group uk-grid-margin">
      <input type="hidden" name="group_form_send_4_s" value="<?=base64_encode($glo_lang['chon_loai_vay']) ?>">
      <select id="shop" name="group_form_send_4">
        <option value="0"><?=$glo_lang['chon_loai_vay'] ?></option>
        <?php
	        $banner = LAY_banner_new("`id_parent` = 29");
	        foreach ($banner as $rows) {
	    ?>
      	<option value="<?=$rows['tenbaiviet_'.$lang] ?>"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></option>
      <?php } ?>
      </select>
    </div>
    <div class="form-group frm-btnwrap uk-grid-margin">
      <div class="frm-btn">
        <button type="button" onclick="return CHECK_send_lienhe('<?=$full_url ?>/','#formnamecontact2', '.cls_data_check_form')" style="cursor:pointer" class="button button-2 button_bg"><?=$glo_lang['xac_nhan']  ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_lh"></button>
        <input type="hidden" name="id_token" class="id_token" value="<?=@$_SESSION['token'] ?>">
      </div>
    </div>
    <div class="form-group note uk-grid-margin uk-first-column">
      <p><span><?=$glo_lang['thong_tin_bat_buoc'] ?></span></p>
    </div>
    <div class="clr"></div>
    <p><?=$glo_lang['mo_ta_khoan_vay'] ?></p>
    </form>
  </div>
  <div class="clr"></div>

  </div>
  <div class="clr"></div>
  </div>
</div>
<?php if(isset($_GET['tu-van'])){ ?>
<script>
  $(function(){
    GOTO_sport(".dv-home-gioithieu");
  })
</script>
<?php } ?>

<section class="dv-home-search">
 <div class="pagewrap">
  <div class="section-title"><?=$glo_lang['tim_phong_giao_dich_gan'] ?></div>
  <div class="form-row uk-flex uk-flex-middle">
    <div class="form-group">
      <label><?=$glo_lang['tinh_thanh'] ?></label>
      <select id="n_tinhthanh_2" onchange="LOAD_tinhthanh(this, '#id_quanhuyen_2', '<?=$glo_lang['chon_quan_huyen'] ?>')">
        <option value="0"><?=$glo_lang['chon_tinh_thanh'] ?></option>
        <?php 
          foreach ($khuvuc as $kv) {
        ?>
        <option value="<?=$kv['id'] ?>"><?=$kv['tenbaiviet_'.$lang] ?></option>
        <?php } ?>
      </select>
    </div>
    <div class="form-group">
        <label><?=$glo_lang['quan_huyen'] ?></label>
        <select  id="id_quanhuyen_2">
          <option value="0"><?=$glo_lang['chon_quan_huyen'] ?></option>
        </select>
      </div>
      <div class="form-group frm-btnwrap">
        <div class="frm-btn">
          <a class="cur" onclick="check_goto_pgd()"><?=$glo_lang['xem_ngay'] ?></a>
        </div>
      </div>
      <script>function check_goto_pgd(){window.location.href = "<?php 
            $laystep = LAY_step(10, 1);
            echo $full_url."/".$laystep['seo_name']."/";

           ?>?tp="+$("#n_tinhthanh_2").val()+"&qh="+$("#id_quanhuyen_2").val();}</script>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</section>

<div class="dv-home-tintuc">
  <div class="pagewrap">
    <h3><?=$glo_lang['tin_tuc_su_kien'] ?></h3>
    <h2 class="tiltle"><?=$glo_lang['tin_tuc_su_kien_mo_ta'] ?></h2>
    <div class="tt_page tt_page_top">
      <div id="tintuc_slide" >
        <?php $data = array("1","1","2","2","3","3"); ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          $sp_step = LAY_step(4, 1);
          $baiviet = LAY_baiviet(4, 12, "`opt` = 1");
          foreach ($baiviet as $rows) {
        ?>
        <div class="item">
          <div class="new_id_bs">
            <li><a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
            <ul>
              <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
              <p><span class="lm_3"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
              <p class="read_more"><a class="wow fadeInUp" <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?> <i class="fa fa-caret-right"></i></a></p>
            </ul>
            <div class="clr"></div>
          </div>
        </div>
        <?php } ?>
        </div>
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
    <p class="read_more"><a class="wow fadeInUp" <?=full_href($sp_step) ?>><?=$glo_lang['xem_tat_ca'] ?></a></p>
  </div>
</div>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 31");
  if(count($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 28", 1);
?>
<div class="dv-home-khachhang" style="background: url(<?=full_src($hinhanh, '') ?>) center center fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <h2 class="tiltle"><?=$glo_lang['doi_tac_khach_hang'] ?></h2>
      <div class="home-kh-a wow fadeInDown">
        <div id="partner_slide">
          <?php $data = array("1","2","3","4","5","5") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
            <?php 
              foreach ($banner_top as $rows) { 
            ?>
          <div class="item">
            <div class="i-con-kh"><a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></div>
          </div>
          <?php }?>
          </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php } ?>