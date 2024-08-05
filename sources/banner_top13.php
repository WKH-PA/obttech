<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
?>
<div class="box_banner_home">
  <div class="multiple-items">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <div class="bg_banner">
      <div class="pagewrap">
        <div class="images-l"><img src="<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></div>
        <div class="bg-r">
          <h4><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
          <?=SHOW_text($rows['noidung_'.$lang]) ?>
          <p class="a_more"><a <?=full_href($rows) ?>><?=$glo_lang['xem_them'] ?></a></p>
        </div>
    </div>
  </div>
    <?php } ?>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
  $('.multiple-items').slick({
   dots: false,
   infinite: true,
   slidesToShow: 1,
   slidesToScroll: 1,
   autoplay: true,
   autoplaySpeed: 5000,
   fade: true,
   cssEase: 'linear'
 });
});
</script>
<?php } ?>