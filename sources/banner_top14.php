<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
?>
<div class="bannerMain wow fadeInDown">
	<a href="#conten_page" class="scroll">
  <div id="downButton"></div>
  </a>
  <div class="banner">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <li style='background-image:url(<?=$fullpath."/".$rows['duongdantin']."/".$rows['icon'] ?>);'>
      <div class="box_title_banner">
          <ul>
            <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
            <p><?=SHOW_text($rows['mota_'.$lang]) ?></p>
    			  <h4><a <?=full_href($rows) ?>><?=$glo_lang['xem_them'] ?></a></h4>
    			  <div class="clr"></div>
          </ul>
        </div>
    </li>
    <?php } ?>
 
  </div>
  <a href="#" class="placeNav prev1"><i class="fa fa-angle-left"></i></a><a href="#" class="placeNav next1"><i class="fa fa-angle-right"></i></a> 
  <script type="text/javascript">
        jQuery(document).ready(function(){
			$(".banner").carouFredSel({
				circular: true,
				infinite: true,
				responsive: true,
				pagination: '.pagiBanner',
				auto : {pauseDuration : 2000,pauseOnHover  : true,duration: 1200,fx 		: "crossfade",},
				scroll	: {
					fx : "slide",items	: 1,
					onBefore: function( data ) {
						$('.banner li').not(data.items.visible[0]).find('.caption').animate({opacity: 0,visibility: 'hidden',bottom: -50});
						$(data.items.visible[0]).find('.caption').animate({opacity: 1,visibility: 'visible',bottom: 0},{queue:false,duration:1000});
					},
				},
				prev  : ".placeNav.prev1",
        next  : ".placeNav.next1",
				swipe: {onMouse: true,onTouch: true},
				items: {height: "variable",visible: {min: 1,max: 1}}
			});
        });
		
 
    </script>
  <div class="clr"></div>
</div>
<?php } ?>