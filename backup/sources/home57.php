<?php include _source. "banner_top.php" ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(is_array($banner_top)){
?>
<div class="home_sanpham">
  <div class="pagewrap">
    <h4 class="wow fadeInDown"><span><?=$glo_lang['san_pham_noi_bac'] ?></span></h4>
    <div class="col-md-12">
    	<!--  -->
        <?php $data = array("1","2","2","3","4","4") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="0">
          <?php 
            foreach ($banner_top as $rows) { 
          ?>
          <div class="item">
		      <div class="col-md-3 wow fadeInLeft">
		        <a class="grid-item" <?=full_href($rows) ?>>
		          <img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
		          <p><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></p>
		        </a>
		      </div>
          </div>
          <?php } ?>
        </div>
        <!--  -->
         </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
<?php
    $noidung= LAYTEXT_rieng(85);
    if(is_array($noidung)){
  ?>
<div class="about_home">
  <div class="pagewrap">
    <div class="group-box">
      <a onclick="LOAD_video_youtube('<?=GET_ID_youtube($noidung['p1_'.$lang]) ?>')" class="preview cur"><div class="col-md-4 wow fadeInLeft">
        <?=full_img($noidung, '') ?>
      </div></a>
      <div class="col-md-8 wow fadeInRight">
        <div class="wrapper-detail">
        	<h2><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2>
          	<?=SHOW_text($noidung['noidung_'.$lang]) ?>
          	<p class="view_more"><a <?=full_href($noidung) ?>><?=$glo_lang['xem_them'] ?> »</a></p>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(4, 18, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="home_sanpham home_sanpham_duan">
  <div class="pagewrap">
    <h4 class="wow fadeInDown"><span><?=$glo_lang['du_an_noi_bat'] ?></span></h4>
    <div class="col-md-12 autoplay1 wow fadeInDown slider_home no_box">
    	<!--  -->
		<?php $data = array("2","3","4","5","6","7") ?>
		<div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
		<?php
		  foreach ($sp_baiviet as $rows) {
		?>
		<div class="item">
      		<li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
		</div>
		<?php } ?>
		</div>
		<div class="clr"></div>
		<!--  -->
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
  	$hinhanh        = LAY_banner_new("`id_parent` = 30", 1);
?>
<div class="newsletter_home" style="background: url(<?=full_src($hinhanh, '') ?>) center center fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap wow fadeInDown home-0">
    <div class="titile_page wow fadeInDown">
      <ul>
        <h5><span><?=$glo_lang['doi_tac_khach_hang'] ?></span></h5>
        <p><?=$glo_lang['doi_tac_khach_hang_mo_ta'] ?></p>
        <div class="clr"></div>
      </ul>
    </div>
    <ul id="scroller">
      <?php 
          foreach ($banner_top as $rows) { 
        ?>
      	<li><a <?=full_href($rows) ?>><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
        <?php } ?>
    </ul> 
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(5, 5, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="new_top_id">
  <div class="pagewrap">
    <div class="titile_page wow fadeInDown">
      <ul>
        <h5><span><?=$glo_lang['tin_tuc_su_kien'] ?></span></h5>
        <p><?=$glo_lang['tin_tuc_su_kien_mo_ta'] ?></p>
        <div class="clr"></div>
      </ul>
    </div>
    <?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i != 1) continue; ?>
    <div class="one_new_home wow fadeInLeft">
      <li><a <?=full_href($rows) ?>><?=full_img($rows, '') ?></a></li>
      <ul>
        <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
      </ul>
      <div class="clr"></div>
    </div>
	<?php } ?>
    <div class="one_new_home_right wow fadeInRight flex">
    	<?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i == 1) continue; ?>
      <ul>
        <li><a <?=full_href($rows) ?>><?=full_img($rows) ?>></a></li>
        <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <div class="clr"></div>
      </ul>
      <?php } ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>