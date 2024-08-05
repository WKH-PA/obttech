<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
?>
<div class="bannerMain wow fadeInDown">
  <div class="banner">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <li>
      <?php if($rows['seo_name'] != ""){ ?><a <?=full_href($rows) ?>><?php } ?>
      <img src="<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>" alr="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
      <?php if($rows['seo_name'] != ""){ ?></a><?php } ?>
    </li>
    <?php } ?>
  </div>
  <ul class="pagiBanner"></ul>
  <script type="text/javascript">
        jQuery(document).ready(function(){
      $(".banner").carouFredSel({
        circular: true,
        infinite: true,
        responsive: true,
        pagination: '.pagiBanner',
        auto : {pauseDuration : 2000,pauseOnHover  : true,duration: 1200,fx     : "crossfade",},
        scroll  : {
          fx : "slide",items  : 1,
          onBefore: function( data ) {
            $('.banner li').not(data.items.visible[0]).find('.caption').animate({opacity: 0,visibility: 'hidden',bottom: -50});
            $(data.items.visible[0]).find('.caption').animate({opacity: 1,visibility: 'visible',bottom: 0},{queue:false,duration:1000});
          },
        },
        prev    : false,
        next    : false,
        swipe: {onMouse: true,onTouch: true},
        items: {height: "variable",visible: {min: 1,max: 1}}
      });
        });
    </script>
  <div class="clr"></div>
</div>
<?php } ?>