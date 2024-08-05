<?php
  $banner_top = LAY_banner_new("`id_parent` = 16");
  if(count($banner_top)){
    $data = array("1","1","1","1","1","1");
    $rows = $banner_top[0];
    $banner_sp = LAY_banner_new("`id_parent` = 29", 5);
?>
<div class="bannerMain">
	<div class="banner">
		<div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
			<li class="heroCarousel-slide  heroCarousel-slide--first">
				<div class="heroCarousel-image-wrapper">
					<img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
					<div class="carousel-overlay">
						<?php
							$k = 0;
					      foreach ($banner_sp as $rows) {
					      	$k++;
					      	if($k == 1) {
					    ?>
						<a <?=full_href($rows) ?>><div class="carousel-link carousel-link-five carousel-link1" style="background: url(<?=full_src($rows, '') ?>) top left no-repeat; background-size: cover;"></div></a>
						<?php }else if($k == 2) { ?>
						<a <?=full_href($rows) ?>><div class="carousel-link carousel-link-five carousel-link2" style="background: url(<?=full_src($rows, '') ?>) top left no-repeat; background-size: cover;"></div></a>
						<?php }else if($k == 3) { ?>
						<a <?=full_href($rows) ?>><div class="carousel-link carousel-link-five carousel-link3" style="background: url(<?=full_src($rows, '') ?>) top left no-repeat; background-size: cover;"></div></a>
						<?php }else if($k == 4) { ?>
						<a <?=full_href($rows) ?>><div class="carousel-link carousel-link-five carousel-link4" style="background: url(<?=full_src($rows, '') ?>) top left no-repeat; background-size: cover;"></div></a>
						<?php }else if($k == 5) { ?>
						<a <?=full_href($rows) ?>><div class="carousel-link carousel-link-five carousel-link5" style="background: url(<?=full_src($rows, '') ?>) top left no-repeat; background-size: cover;"></div></a>
					<?php } ?>
					<?php } ?>
					</div>
				</div>
			</li>
			<?php
				$i = 0;
		      foreach ($banner_top as $rows) {
		      	$i++;
		      	if($i == 1) continue;
		    ?>
			<li class="heroCarousel-slide">
				<div class="heroCarousel-image-wrapper">
					<img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
				</div>
				<div class="heroCarousel-content">
					<h1 class="heroCarousel-title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h1>
					<p class="heroCarousel-description"><?=SHOW_text($rows['mota_'.$lang]) ?></p>
					<?php if($rows['seo_name'] != "") { ?>
					<p class="read_more"><a <?=full_href($rows) ?>><?=$glo_lang['xem_them'] ?><i class="fa fa-caret-right"></i></a></p>
					<?php } ?>
				</div>
			</li>
		    <?php } ?>
		</div>
	</div>
	<div class="clr"></div>
</div>
<?php } ?>