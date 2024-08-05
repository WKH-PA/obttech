<?php
  $noidung= LAYTEXT_rieng(82);
  if(is_array($noidung)){
?>
<div class="about_home">
  <div class="pagewrap">
    <div class="title_module wow flipInX">
      <h2 class="title"><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2>
    </div>
    <div class="wow fadeInDown">
      <div class="showText">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
      <p class="read_more"><a <?=full_href($noidung) ?>><?=$glo_lang['xem_them'] ?> <i class="fa fa-long-arrow-right"></i></a></p>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 28");
  if(count($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 26", 1);
?>
<section class="section_taisao" style="background-image: url(<?=full_src($hinhanh, '') ?>); background-repeat: no-repeat; background-size: cover; background-position: top left; background-attachment: fixed;">
  <div class="pagewrap">
    <div class="col-lg-7">
      <div class="title_module wow flipInX">
        <h3 class="title"><?=$glo_lang['tai_sao_chon_chung_toi'] ?></h3>
      </div>
      <p class="blockchain wow fadeInDown"><?=$glo_lang['tai_sao_chon_chung_toi_mo_ta'] ?></p>
      <div class="flex dv-tscct">
        <?php 
          $i = 0; $j = 0;
          foreach ($banner_top as $rows) { 
            $i++; $j++;
            if($i == 5) $i = 1;
        ?>
        <div class="col-lg-6 col-md-3 wow fadeInLeft dv-ts-<?=$i ?>">
         <img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
         <p><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></p>
         <span><?=$j < 10 ? "0".$j : $j ?></span>
       </div>
        <?php }  ?>
      </div>
    <div class="clr"></div>
  </div>
</div>
<div class="clr"></div>
</section>
<?php } ?>
<?php
  $sp_baiviet = LAY_baiviet("4,3", 12, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="grid-gallery">
  <div class="pagewrap">
    <div class="title_module wow flipInX">
      <h4 class="title"><?=$glo_lang['dich_vu_cua_chung_toi'] ?></h4>
    </div>
    <div class="left_tt_home wow fadeIn" id="news_slide">
      <!--  -->
    <?php $data = array("1","1","2","2","3","3") ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
      <?php 
        foreach ($sp_baiviet as $rows) { 
      ?>
      <div class="item">
        <ul>
          <li><a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
          <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
        </ul>
      </div>
      <?php } ?>
    </div>
    <!--  -->
    </div>
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(5, 5, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="tintuc_box_home">
  <div class="pagewrap">
    <div class="title_module wow flipInX">
      <h4 class="title"><?=$glo_lang['tin_tuc_su_kien'] ?></h4>
    </div>
    <div class="dv-tintuc-home flex no_box">
      <?php
        $i = 0;
        foreach ($sp_baiviet as $rows) {
          $i++;
          if($i > 1) continue;
      ?>
      <div class="one_new_home wow fadeInLeft">
        <ul>
          <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
          <div class="themesion-box-content"> 
            <div class="thsn-meta-line">         
              <i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?><span></span>
            </div>
            <h3 class="thsn-post-title">
              <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <div class="clr"></div>
          </div>
        </ul>
      </div>
      <?php } ?>
      <div class="one_new_home_right wow fadeInRight flex">
        <?php
          $i = 0;
          foreach ($sp_baiviet as $rows) {
            $i++;
            if($i == 1) continue;
        ?>
        <ul>
          <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
          <div class="themesion-box-content"> 
            <div class="thsn-meta-line">         
              <i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?><span></span>
            </div>
            <h3 class="thsn-post-title"><a <?=full_href($rows) ?>><span class="lm_3"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></span></a></h3>    
          </div>
          <div class="clr"></div>
        </ul>
        <?php } ?>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 31");
  if(count($banner_top)) {
?>
<div class="team_home">
  <div class="pagewrap">
    <div class="title_module wow flipInX">
      <h2 class="title"><?=$glo_lang['doi_tac_khach_hang'] ?></h2>
    </div>
    <p class="blockchain wow fadeInDown"><?=$glo_lang['doi_tac_khach_hang_mo_ta'] ?></p>
    <!--  -->
    <?php $data = array("1","1","2","2","2","2") ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
      <?php 
        foreach ($banner_top as $rows) { 
      ?>
      <div class="item wow fadeInLeft">
        <div class="item-bs">
          <a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a>
          <p><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></p>
          <span><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></span>
        </div>
      </div>
      <?php }?>

    </div>
    <div class="clr"></div>
    <!--  -->
  </div>
</div>
<?php } ?>