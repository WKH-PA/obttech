<?php include _source."banner_top.php";?>
<?php
  $noidung= LAYTEXT_rieng(82);
  if(is_array($noidung)){
?>
<div class="dv-home-gioithieu">
  <div class="pagewrap">
    <div class="dv-home-gtlefft">
      <a <?=full_href($noidung) ?>>
        <?=full_img($noidung, '') ?>
      </a>
      <div class="img-nho">
        <?=full_img_hover($noidung, '') ?>
      </div>
    </div>
    <div class="dv-home-gtright">
      <div class="dv-home-gtright-cont">
        <h2><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h2>
        <h1><?=SHOW_text($noidung['p1_'.$lang]) ?></h1>
        <div class="dv-gioithieu-text showText">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
        <div class="dv-btn-xemthem">
          <a <?=full_href($noidung) ?> class="btn-nut-main"><i class="fa fa-hand-o-right"></i><?=$glo_lang['xem_them'] ?></a>
        </div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>


<div class="dv-home-dich-vu">
  <div class="pagewrap">
    <div class="dv-home-dich-vu-cont">
      <div class="dv-grtop-home">
        <h2><?=$glo_lang['chuyen_cung_cap_tho'] ?></h2>
        <h3><?=$glo_lang['ban_dang_can_tho'] ?></h3>
        <p><?=$glo_lang['ban_dang_can_tho_mo_ta'] ?></p>
      </div>
      <div class="dv-home-dv flex">
        <?php
          $danhmuc = LAY_danhmuc(2,0,"`id_parent` = 0");
          foreach ($danhmuc as $rows) {
        ?>
        <div class="dv-gr-dv">
          <div class="img">
            <a <?=full_href($rows) ?>>
              <?=full_img($rows) ?>
            </a>
          </div>
          <a <?=full_href($rows) ?>><h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3></a>
          <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></span></p>
          <div class="tt-row-btn"> 
            <a <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-caret-right"></i></a>
          </div>
        </div>
      <?php } ?>
      <div class="clr"></div>
      </div>
    </div>
  </div>
</div>
<?php
  $noidung= LAYTEXT_rieng(88);
  if(is_array($noidung)){
?>
<div class="dv-tai-sao-goi-tho" style="background: url(<?=full_src($noidung, '') ?>) center center; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <div class="dv-tai-sao-goi-tho-cont flex">
      <div class="dv-taisao-left">
        <a class="cur" onclick="LOAD_video_youtube('<?=GET_ID_youtube($noidung['seo_name']) ?>')">
            <i class="fa fa-play"></i>
        </a>
      </div>
      <div class="dv-taisao-right">
        <div class="dv-taisao-right-cont">
          <h3 class="title"><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
          <div class="dv-gioithieu-text showText">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
          </div>
          <div class="dv-btn-xemthem">
            <a <?=full_href($noidung) ?> class="btn-nut-main"><i class="fa fa-hand-o-right"></i><?=$glo_lang['xem_them'] ?></a>
          </div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php } ?>
<?php
  $sp_baiviet = LAY_baiviet(4, 3, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="dv-new-home">
  <div class="pagewrap">
    <div class="dv-grtop-home">
      <h2><?=$glo_lang['tin_moi_nhat'] ?></h2>
      <h3><?=$glo_lang['tin_tuc_su_kien'] ?></h3>
      <p><?=$glo_lang['tin_tuc_su_kien_mo_ta'] ?></p>
    </div>
    <div class="dv-list-tintuc dv-list-tintuc-ds dv-slider flex">
      <?php $data = array("1","1","2","2","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php foreach ($sp_baiviet as $rows) { ?>
          <div class="item">
            <div class="dv-dstin">
              <div class="img">
                <a <?=full_href($rows) ?>>
                  <img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
                </a>
              </div>
              <div class="dv-grnd">
                <p class="date"><?=date("d/m/Y", $rows['ngaydang']) ?></p>
                <h3>
                  <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
                </h3>
                <span class="lm_3"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span>
                <div class="btn-xthem" > <a <?=full_href($rows) ?>><?=$glo_lang['doc_tiep'] ?><i class="fa fa-caret-right"></i></a></div>
              </div>
            </div>
          </div>
        <?php } ?>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<?php } ?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
?>
<div class="dv-doitac">
  <div class="pagewrap">
    <div class="dv-doitac-cont wow fadeInDown">
      <?php $data = array("2","2","3","4","5","6") ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="0" is_autoplay="1">
        <?php 
        // $i = 0;
        foreach ($banner_top as $rows) { 
          // $i++;
          // if($i == 1) echo '<div class="item">';
      ?>
      <div class="item">
        <div class="dv-doitac-gr">
          <a <?=full_href($rows) ?>>
            <img src="<?=full_src($rows, '') ?>">
          </a>
        </div>
      </div>
        
      <?php } // if($i == 2) { echo '</div>'; $i = 0;} } if($i == 1)  echo '</div>'; ?>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } ?>
