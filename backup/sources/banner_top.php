<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
    $data = array("1","1","1","1","1","1");

	$thoigianchay = $thongtin['slider_speed'] * 1000;
	$thoigiancho  = $thongtin['slider_cho'] * 1000;
	$thoigianchay = is_numeric($thoigianchay) ? $thoigianchay : 2000;
	$thoigiancho  = is_numeric($thoigiancho) ? $thoigiancho : 1000;
	$fadeIn       = "";
	$fadeOut      = "";
	if($thongtin['slider_hieuung'] == 1) {
		$fadeIn       = "fadeIn";
		$fadeOut      = "fadeOut";
	}
	else if($thongtin['slider_hieuung'] == 2) {
		$fadeIn       = "bounceIn";
		$fadeOut      = "bounceOut";
	}
	else if($thongtin['slider_hieuung'] == 3) {
		$fadeIn       = "rotateIn";
		$fadeOut      = "rotateOut";
	}
	else if($thongtin['slider_hieuung'] == 4) {
		$fadeIn       = "bounceInUp";
		$fadeOut      = "fadeOutUp";
	}
	else if($thongtin['slider_hieuung'] == 5) {
		$fadeIn       = "bounceIn";
		$fadeOut      = "bounceOutUp";
	}

?>
<div class="box_banner_home">
	<div class="multiple-items ">
		<div class="owl-auto-new owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="<?=$thoigiancho ?>" is_navigation="1" is_dots="1" is_autoplay="1" is_run="<?=$thoigianchay ?>">
		<?php 
	      foreach ($banner_top as $rows) { 
	    ?>
	    <div class="item">
	      <?php if($rows['seo_name'] != "") { ?><a <?=full_href($rows) ?>><?php } ?>
	      <img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
	      <?php if($rows['seo_name'] != "") { ?></a><?php } ?>
	    </div>
	    <?php } ?>
		</div>
		<div class="clr"></div>
	</div>
</div>
<script>
	$(document).ready(function() {
	    $(".owl-auto-new").each(function(){
	      var is_slidespeed = $(this).attr("is_slidespeed");
	      var is_navigation = $(this).attr("is_navigation") == 1 ? true : false;
	      var is_dots       = $(this).attr("is_dots") == 1 ? true : false;
	      var is_autoplay   = $(this).attr("is_autoplay") == 1 ? true : false;
	      var is_items_0    = $(this).attr("data0");
	      var is_items_1    = $(this).attr("data1");
	      var is_items_2    = $(this).attr("data2");
	      var is_items_3    = $(this).attr("data3");
	      var is_items_4    = $(this).attr("data4");
	      var is_items_5    = $(this).attr("data5");
	      var is_lop        = $(this).attr("is_lop");
	      var is_run        = $(this).attr("is_run");
	      if(is_lop == 1) is_lop = false; else is_lop = true;
	      if(is_run == "undefined" || is_run == undefined) is_run = 2000;

	      $(this).owlCarousel({
	      	<?php if($fadeIn != ""){ ?>
	      	animateIn: '<?=$fadeIn ?>',
		  	animateOut: '<?=$fadeOut ?>',
		    items:1,
		    loop:is_lop,
	        lazyLoad: true,
	        autoplayHoverPause: true,
	        responsiveClass: true,
	        nav : is_navigation,
	        smartSpeed: is_run,
	        dots: is_dots,
	        autoplay: is_autoplay,
	        autoplayTimeout: is_slidespeed,
	        navigationText : ["‹","›"]
	    <?php }else { ?>
	        animateOut: 'slideOutDown',
	        animateIn: 'flipInX',
	        loop:is_lop,
	        lazyLoad: true,
	        autoplayHoverPause: true,
	        responsiveClass: true,
	        nav : is_navigation,
	        smartSpeed: is_run,
	        responsive : {
	            0 : { items : is_items_0 },
	            319 : { items : is_items_1 },
	            479 : { items : is_items_2 },
	            767 : { items : is_items_3 },
	            991 : { items : is_items_4 },
	            1199 : { items : is_items_5 }
	        },
	        dots: is_dots,
	        autoplay: is_autoplay,
	        autoplayTimeout: is_slidespeed == 1000 ? 5000 : is_slidespeed,
	        navigationText : ["‹","›"]
	    <?php } ?>
	      });
	    });
	});
</script>
<?php } ?>