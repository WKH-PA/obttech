<?php include _source."banner_top.php";?>
<?php
    $noidung= LAYTEXT_rieng(85);
    if(is_array($noidung)){
  ?>
<div class="gioithieu_home up wow fadeInUp">
<div class="pagewrap">
	<div class="title_page wow flipInY">
      <ul>
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
      </ul>
    </div>
	<div class="auout_home">
      <li>
          <a <?=full_href($noidung) ?>>
            <?=full_img($noidung, '') ?>
          </a>
      </li>
      <ul>
        <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        <h3><a <?=full_href($noidung) ?>><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-angle-double-right"></i></a></h3>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php } ?>
<?php
  // $sp_baiviet = LAY_baiviet(2, 6, "`opt` = 1");
  // if(count($sp_baiviet)){
?>
<div class="box_pro_home">
  <div class="pagewrap">
  	<div class="title_page wow flipInY">
        <ul>
          <h3><?=$glo_lang['san_pham_noi_bac'] ?></h3>
        </ul>
      </div>
    <div id="pro_tabs" class="wow fadeInUp">
      <div class="box_tab">
        <ul class="listtabs">
          <li><a onclick="SHOWHI_cls(this, '.atab', '#tab1', '.tabs' )" class="cur atab active "><?=$glo_lang['san_pham_moi'] ?></a></li>
          <li><a onclick="SHOWHI_cls(this, '.atab', '#tab2', '.tabs' )" class="cur atab"><?=$glo_lang['san_pham_ban_chay'] ?></a></li>
          <li><a onclick="SHOWHI_cls(this, '.atab', '#tab3', '.tabs' )" class="cur atab"><?=$glo_lang['san_pham_khuyen_mai'] ?></a></li>
          <div class="clr"></div>
        </ul>
      </div>
    </div>
    <div id="tab1" class="tabs"  style="display: block;">
      <div class="pro_list pro_list_2">
        <?php
          $san_pham_moi = LAY_baiviet(2, 10, "`opt` = 1");
          $san_pham_ban_chay = LAY_baiviet(2, 10, "`opt1` = 1");
          $san_pham_khuyen_mai = LAY_baiviet(2, 10, "`opt2` = 1");
        ?>
        <?php
          // $view  = "slider";
          foreach ($san_pham_moi as $rows) {
            $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
            include _source.'home_temp.php';
          }
        ?>
      </div>
      <div class="clr"></div>
    </div>
    <div id="tab2" class="tabs">
      <div class="pro_list pro_list_2">
        <?php
          // $view  = "slider";
          foreach ($san_pham_ban_chay as $rows) {
            $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
            include _source.'home_temp.php';
          }
        ?>
      </div>
      <div class="clr"></div>
    </div>
  	 <div id="tab3" class="tabs">
        <div class="pro_list pro_list_2">
          <?php
            // $view  = "slider";
            foreach ($san_pham_khuyen_mai as $rows) {
              $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
              include _source.'home_temp.php';
            }
          ?>
        </div>
        <div class="clr"></div>
      </div>
	</div>
</div>

<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(is_array($banner_top)){
?>
<div class="box_banner_quangcao_home up wow fadeInUp">
<div class="pagewrap">
	<ul class="no_box flex">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
  	<li><a <?=full_href($rows) ?>><?=full_img($rows, '') ?></a></li>
    <?php } ?>
    <div class="clr"></div>
	</ul>
	</div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(3, 18, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="box_services_home">
  <div class="pagewrap">
	<div class="title_page wow flipInY">
      <ul>
        <h3><?=$glo_lang['tin_tuc_su_kien'] ?></h3>
      </ul>
    </div>
    <div class="new_id new_id_slider no_box">
      <!--  -->
      <?php $data = array("1","1","2","2","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <div class="item">
          <ul class="wow flipInY">
            <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
            <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <h2><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></h2>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <h4><a <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-long-arrow-right"></i></a></h4>
          </ul>
        </div>
        <?php } ?>
      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
  </div>
</div>
<?php } ?>