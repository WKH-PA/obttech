<?php
    $banner_top = LAY_banner_new("`id_parent` = 16");
    if(count($banner_top)){
  ?>
<div class="box_banner_home">
  <!--  -->
  <div class="pagewrap">
  <?php $data = array("1","1","1","1","1","1") ?>
    <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <div class="item">
      <div class="multiple-items">
          <div class="text_l">
            <h1 class="wow fadeInDown"><strong><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></strong> <?=SHOW_text($rows['mota_'.$lang]) ?></h1>
            <div>
              <?=SHOW_text($rows['noidung_'.$lang]) ?>
            </div>
           </div>
           <div class="text_r">
              <img src="<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>" class="wow fadeInRight">
            </div>
            <div class="clr"></div>
         </div>
      </div>
    <?php } ?>

    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <!--  -->
</div>
<?php } ?>