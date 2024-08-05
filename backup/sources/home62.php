<?php include _source."banner_top.php";?>
<?php
    $noidung= LAYTEXT_rieng(85);
    if(is_array($noidung)){
  ?>
<div class="home_about">
  <div class="pagewrap">
    <div class="col-lg-7 wow fadeInUp">
      <h6><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h6>
      <h5><?=SHOW_text($noidung['p1_'.$lang]) ?></h5>
      <div class="showText">
        <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
    </div>
    <div class="col-lg-5 wow fadeInLeft">
      <a onclick="LOAD_video_youtube('<?=GET_ID_youtube($noidung['seo_name']) ?>')" class="preview cur">
        <div class="about-style1-image-box clearfix">
          <?=full_img($noidung, '') ?>
        </div>
      </a>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(2, 12, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="background-fix">
  <div class="wg_lvtm_wrapper_1170px pagewrap">
    <h5 class="saral-section-title wow flipInY"><?=$glo_lang['chung_toi_lam_gi'] ?></h5>
    <h2 class="wow flipInY"><?=$glo_lang['dich_vu_cua_chung_toi'] ?></h2>


    <div class="autoplay wow fadeInDown dv-slider no_box" data-wow-duration="2s">
      <!--  -->
      <?php $data = array("1","1","2","2","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <div class="item">
          <div class="saral-margin-btm-3">
            <div class="saral-post-thumbnail">
              <a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a>
            </div>
            <div class="saral-post-grid-content-wrapper">
              <h4 class="saral_post-heading"><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h4>
              <p class="blog-content"><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
              <a <?=full_href($rows) ?> class="read-more-icon"><i class="fa fa-share"></i></a>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
    <div class="clear"></div>
  </div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(count($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 32", 1);
?>
<div class="newsletter_home" style="background: url(<?=full_src($hinhanh, '') ?>) center center; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
<div class="pagewrap">
  <div class="menu-so wow fadeInDown">
    <h6><?=$glo_lang['ten_cong_ty'] ?><span><?=$glo_lang['su_that_tuyet_voi'] ?></span></h6>
    <div class="menu-so1">
      <?php 
        foreach ($banner_top as $rows) { 
      ?>
      <div class="menu_style">
        <div class="so1"></div>
        <div class="count"><?=SHOW_text($rows['mota_'.$lang]) ?></div>
        <p><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></p>
      </div>
      <?php } ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
</div>
<?php } ?>


<div class="home-khachhang pagewrap">
  <div class="col-lg-5">
    <div class="title_module_main wow flipInY" >
      <h6 class="h4"><span><?=$glo_lang['doi_tac_khach_hang'] ?></span></h6>
      <div class="clr"></div>
    </div>
    <div class="home-kh-a wow fadeInDown flex">
      <?php
        $sp_baiviet   = LAY_baiviet(3, 9, "`opt` = 1");
        if(count($sp_baiviet)){
          foreach ($sp_baiviet as $rows) {
      ?>
      <div class="i-con-kh"><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></div>
      <?php }} ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="col-lg-6">
    <div class="news wow fadeInLeft" data-wow-duration="4s">
      <div class="title_module_main wow flipInY" >
        <h6 class="h4"><span><?=$glo_lang['tin_tuc_su_kien'] ?></span></h6>
        <div class="clr"></div>
      </div>
      <div class="module-overzicht multiple-items1 dv-slider no_box">
        <!--  -->
        <?php $data = array("1","1","2","2","2","2") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
          <?php
            $sp_baiviet   = LAY_baiviet(4, 12, "`opt` = 1");
            foreach ($sp_baiviet as $rows) {
          ?>
          <div class="item">
            <div class="blog_item">
              <div class="blogwp">
                <div class="image-thumb">

                  <a class="image-blog" <?=full_href($rows) ?>>
                    <img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/>
                  </a>

                  <div class="post-detail">
                    <span class="date-blog"><?=date("d/m", $rows['ngaydang']) ?></span>
                    <span class="month-blog"><?=date("Y", $rows['ngaydang']) ?></span>
                  </div>
                </div>
                <div class="content_blog">
                  <h3>
                    <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
                  </h3>
                  <p class="justify"><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
        <div class="clr"></div>
        <!--  -->
      </div>
    </div>
  </div>
  <div class="clr"></div>
</div>