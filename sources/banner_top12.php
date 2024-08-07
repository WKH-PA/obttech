<?php
    $banner_top = LAY_banner_new("`id_parent` = 16");
    if(count($banner_top)){
  ?>
<div class="bannerMain wow fadeInDown">
  <div class="banner">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <li style='background-image:url(<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>);'>
      <div class="box_title_banner">
      <ul>
        <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
        <p><?=SHOW_text($rows['mota_'.$lang]) ?></p>
        <h4><a <?=full_href($rows) ?> ><?=$glo_lang['mua_ngay'] ?></a></h4>
        <div class="clr"></div>
        </ul>
      </div>
    </li>
    <?php } ?>

  </div>

  <ul class="pagiBanner">

  </ul>

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