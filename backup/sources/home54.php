<?php include _source."banner_top.php";?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 32");
  if(is_array($banner_top)){
?>
<section class="awe-section-2"> 
  <section id="ve-chung-toi" class="section section_about clearfix">
  <div class="container pagewrap">
    <div class="title_module_main clearfix wow fadeInDown">
      <h2 class="h2">
        <span><?=$glo_lang['san_pham_noi_bac'] ?></span>
        <small><?=$glo_lang['san_pham_noi_bac_mo_ta'] ?></small>
      </h2>
      <div class="clr"></div>
    </div>
     <div class="row wow fadeInLeft flex dv-spnb">
      <!--  -->
      <?php $data = array("1","2","2","3","4","4") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
        <?php 
          foreach ($banner_top as $rows) { 
        ?>
        <div class="item">
          <div class="col-md-3">
            <div class="item-product"><a <?=full_href($rows) ?> ><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"><br>
            <span><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></span></a></div>
          </div>
        </div>
        <?php } ?>

      </div>
      <!--  -->

      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</section>
</section>
<?php } ?>
<?php
    $noidung= LAYTEXT_rieng(84);
    if(is_array($noidung)){
      $gioithieu = LAY_step(1, 1);
  ?>
<div class="html-widget-1">
  <div class="main-his pagewrap wow fadeInDown">
    <div class="col-md-6">
      <div class="inner-text">
        <h1><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h1>

        <div class="showText"><?=SHOW_text($noidung['noidung_'.$lang]) ?></div>
        <div class="button-more">
          <a <?=full_href($gioithieu) ?>><?=$glo_lang['xem_them'] ?> </a>
        </div>
      </div>
      </div>
      <?php
        $banner_top = LAY_banner_new("`id_parent` = 27", 2);
        if(is_array($banner_top)){
          foreach ($banner_top as $rows) {
      ?>
      <div class="col-md-3 wrapper-box1">
        <div class="wrapper-ct"><a <?=full_href($rows) ?>><span class="icon"> <?=full_img($rows) ?> </span><br>
        <span><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?><br>
        <?=SHOW_text($rows['mota_'.$lang]) ?></span> </a></div>
      </div>
      <?php }} ?>
      <div class="clr"></div>
    </div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
  $sp_baiviet   = LAY_baiviet(4, 15, "`opt` = 1");
  if(count($sp_baiviet)){
?>
 <section class="awe-section-6"> 
  <section id="dichvu-chung-toi" class="section section_about clearfix">
    <div class="container pagewrap">
      <div class="title_module_main clearfix">
        <h3 class="h3 wow fadeInDown">
          <span><?=$glo_lang['tin_tuc_su_kien'] ?></span>
        </h2>
        <div class="clr"></div>
      </div>
      <div class="blog_item_full dv-tintuc-ds dv-tintuc-slider wow fadeInLeft">
        <!--  -->
        <?php $data = array("1","1","2","3","3","3") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
          <?php
            foreach ($sp_baiviet as $rows) {
          ?>
          <div class="item">
            <div class="blog_item">
              <div class="blogwp">
                <div class="image-thumb">

                  <a class="image-blog" <?=full_href($rows) ?>>
                    <img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/>
                  </a>
                  <div class="clr"></div>
                  <div class="date-post">
                    <ul class="post-tags">
                      <li><i class="fa fa-clock-o"></i><?=date("d/m/Y", $rows['ngaydang']) ?></a></li>
                    </ul>
                  </div>
                </div>
                <div class="content_blog">
                  <h3>
                  <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
                  </h3>
                  <p class="justify">
                    <span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
      </div>
    </div>
    <div class="clr"></div>
    <!--  -->
  </section>
</section>
<?php } ?>