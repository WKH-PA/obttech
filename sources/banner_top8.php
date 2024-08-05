<div class="box_banner_home">
  <div class="multiple-items">
     <?php
      $banner_top = LAY_banner_new("`id_parent` = 16");
      foreach ($banner_top as $rows) {
        // $oclick = "";
        // if($rows['seo_name'] != "") {
        //   $oclick = " onclick='window.location.href=\".".GET_link($full_url, $rows['seo_name']).".\"'";
        // }
    ?>
    <div>
      <?php if($rows['seo_name'] != ""){ ?><a <?=full_href($rows) ?>><?php } ?>
      <img src="<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>" alr="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
      <?php if($rows['seo_name'] != ""){ ?></a><?php } ?>
    </div>
    <?php } ?>

  </div>
</div>