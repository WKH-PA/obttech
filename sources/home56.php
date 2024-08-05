<?php include _source."banner_top.php";?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(count($banner_top)) {
    foreach ($banner_top as $rows) {
?>
<div class="home-about no_box" style="background: url(<?=full_src($rows, '') ?>) center center; position: relative; background-repeat: no-repeat; background-size: cover;">
  <div class="pagewrap">
    <div class="l-bg-ad <?=$rows['check_video'] == 1 ? "" : "inleft" ?>">
      <h6><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h6>
      <p><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></p>
      <p><a <?=full_href($rows) ?>><?=$glo_lang['xem_them'] ?> »</a></p>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php }} ?>

<section class="awe-section-6"> 
  <section id="dichvu-chung-toi" class="section section_about clearfix">
  <div class="container pagewrap">
    <div class="title_module_main clearfix">
      <h3 class="h3 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <span><?=$glo_lang['tin_tuc_noi_bat'] ?></span>
      </h3>
      <div class="clr"></div>
    </div>
    <div class="flex">
    <?php
      $tintuc = LAY_baiviet(5,5,"`opt` = 1");
      $i = 0;
      foreach ($tintuc as $rows) {
        $i++;
        if($i != 1) continue;
    ?>
      <div class="one_new_home wow fadeInLeft animated animated animated" style="visibility: visible; animation-name: fadeInLeft;">
        <li><a <?=full_href($rows) ?>><?=full_img($rows,'') ?></a></li>
        <ul>
          <h3><a <?=full_href($rows) ?>>​<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        </ul>
        <div class="clr"></div>
      </div>
    <?php } ?>

        <div class="one_new_home_right wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
          <?php
            $tintuc = LAY_baiviet(5,5,"`opt` = 1");
            $i = 0;
            foreach ($tintuc as $rows) {
              $i++;
              if($i == 1) continue;
          ?>
          <ul>
            <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
            <h3><a <?=full_href($rows) ?>>​<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <div class="clr"></div>
          </ul>
          <?php } ?>
          <div class="clr"></div>
        </div>
    <div class="clr"></div>
    </div>
  </div>
</section>
</section>