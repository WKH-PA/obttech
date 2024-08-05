<?php include _source."banner_top.php";?>
<?php
  $noidung= LAYTEXT_rieng(82);
  if(is_array($noidung)){
    $sp_step = LAY_step(2,1);
?>
<div class="home-0">
  <a <?=full_href($sp_step) ?>><h2 class="title"><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2></a>
  <div class="p-brief"><?=SHOW_text($noidung['noidung_'.$lang]) ?></div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
    $data = array("2","2","3","4","4","4");
?>
<div class="home-1">
  <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="0">
    <?php 
        foreach ($banner_top as $rows) { 
      ?>
      <div class="item box box1 wow fadeindown">
        <div class="box-inner">
          <a <?=full_href($rows) ?>>
            <img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
            <?php if($rows['icon_1'] != "") { ?>
            <h3><img src="<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon_1'] ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></h3>
            <?php } ?>
          </a>
        </div>
      </div>
    <?php } ?>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
  $rows = LAY_banner_new("`id_parent` = 32", 1);
  if(count($rows)) {
?>
<div class="home-2">
  <h4 class="title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
  <video width="100%" height="auto" loop="" id="slide_video" muted="" autoplay>
    <source src="<?=$fullpath."/datafiles/files/".$rows['video'] ?>" type="video/mp4">
  </video>
</div>
<?php } ?>
<?php
  $sp_step    = LAY_step(3, 1);
  $sp_baiviet = LAY_baiviet(3, 10, "`opt` = 1");
  if(count($sp_baiviet)){
    $sp_step = LAY_step(3,1);
?>
  <div class="dv-home-duan">
    <a <?=full_href($sp_step) ?>><h4 class="title"><?=SHOW_text($sp_step['tenbaiviet_'.$lang]) ?></h4></a>
    <div class="dv-home-da">
      <ul>
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
          <li class="">
            <div class="img">
              <a <?=full_href($rows) ?>><?=full_img($rows) ?></a>
            </div>
            <div class="titleOfFoodComponent">
              <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
            </div>
            <p><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></p>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <div class="orange-optional">
              <a <?=full_href($rows) ?> class="orange-button"><?=$glo_lang['xem_chi_tiet'] ?> »</a>
            </div>
          </li>
        <?php } ?>
        
        <div class="clr"></div>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
<?php } ?>
<?php
  $noidung= LAYTEXT_rieng(90);
  if(is_array($noidung)){
?>
  <div class="about_home">
    <div class="wow fadeindown animated">
      <div class="group-box">
        <div class="col-md-8">
          <div class="wrapper-detail">
            <h5 class="title"><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h5>
            <div class="showText"><?=SHOW_text($noidung['noidung_'.$lang]) ?></div>
          </div>
        </div>
        <div class="col-md-4 dv-right-obtvn">
          <!--  -->
          <?php $data = array("2","2","2","3","3","4"); ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
          <?php
            $banner_top = LAY_banner_new("`id_parent` = 26");
            foreach ($banner_top as $rows) {
          ?>
          <div class="item">
            <div class="vc_col-xs-3">
              <div class="vc_column-inner">
                <figure class="wpb_wrapper vc_figure">
                  <a <?=full_href($rows) ?> class="vc_single_image-wrapper">
                    <i class="<?=$rows['fontawesome'] ?>"></i>
                    <p><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></p>
                  </a>
                </figure>
              </div>
            </div>
          </div>
          <?php } ?>
          </div>
          <div class="clr"></div>
          <!--  -->
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <?php } ?>