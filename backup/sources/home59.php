<?php include _source."banner_top.php";?>
<!-- <link href="css/style-ad.css" rel="stylesheet" type="text/css" /> -->
<?php
    $noidung= LAYTEXT_rieng(85);
    if(is_array($noidung)){
  ?>
<div class="home-0">
  <div class="pagewrap wow fadeInDown">
    <h1><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h1>
    <div class="showText showText_new">
      <?=SHOW_text($noidung['noidung_'.$lang]) ?>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
    $noidung= LAYTEXT_rieng(86);
    if(is_array($noidung)){
  ?>
<div class="home-1 flex">
  <div class="col-md-6 col-sm-6 box box3 wow fadeInLeft">
    <div class="col-md-6-1">
      <h2><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2>
      <div class="showText showText_new">
        <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
      <p class="view_more"><a <?=full_href($noidung) ?>><?=$glo_lang['xem_chi_tiet'] ?></a></p>
    </div>
  </div>
  <div class="col-md-6 col-sm-6 box box2 wow fadeInRight">
    <div class="box-inner">
      <a <?=full_href($noidung) ?>>
        <?=full_img($noidung, '') ?>
      </a>
    </div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>
<?php
    $noidung= LAYTEXT_rieng(87);
    if(is_array($noidung)){
  ?>
<div class="home-2 home-0">
  <div class="pagewrap">
    <div class="home_title wow fadeInDown">
      <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
      <p><?=SHOW_text($noidung['p1_'.$lang]) ?></p>
    </div>
    <div class="col-sm-12">
     <div class="col-md-6 col-sm-6 box box3 wow fadeInRight">
      <div class="col-md-6-1">
        <div class="showText showText_new">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </div>
    </div>
    <div class="col-md-6 col-sm-6 box box2 wow fadeInLeft">
      <div class="box-inner">
        <a <?=full_href($noidung) ?>>
          <?=full_img($noidung, '') ?>
        </a>
      </div>
    </div>

  </div>
  <div class="clr"></div>
</div>
</div>
<?php } ?>
<?php
  $danhmuc = LAY_danhmuc(2,0,"`opt` = 1");
  if(count($danhmuc) > 0){
?>
<div class="home-3 home-0">
  <div class="pagewrap">
    <div class="home_title wow fadeInDown">
      <h4><?=$glo_lang['danh_muc_san_pham'] ?></h4>
      <p><?=$glo_lang['san_pham_noi_bac_mo_ta'] ?></p>
    </div>
    <div class="col-sm-12 flex">
      <?php foreach ($danhmuc as $rows) { ?>
      <div class="col-sm-3 wow fadeInLeft">
        <div class="img">
          <a <?=full_href($rows) ?>><?=full_img($rows) ?></a>
        </div>
        <a <?=full_href($rows) ?>><h5><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h5></a>
      </div>
      <?php } ?>

    <div class="clr"></div>
    </div>
  </div>
</div>
<?php } ?>
