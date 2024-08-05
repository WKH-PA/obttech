<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
    $data = array("1","1","1","1","1","1")
?>
<div class="bannerMain">
  <div class="banner ">
    <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <li>
      <?php if($rows['seo_name'] != "") { ?><a <?=full_href($rows) ?>><?php } ?>
      <img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
      <?php if($rows['seo_name'] != "") { ?></a><?php } ?>
    </li>
    <?php } ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>