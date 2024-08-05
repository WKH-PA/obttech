<div class="top_header">
  <div class="pagewrap">
    <div class="left_top">
      <div class="info-item">
        <div class="info-icon">
          <i class="fa fa-phone"></i>
        </div>
        <div class="info-content">
          <p class="info-sub-title"><a href="tel:<?=$thongtin['hotline_vi'] ?>"><?=$thongtin['hotline_vi'] ?></a></p>
        </div>
      </div>
      <div class="info-item">
        <div class="info-icon">
          <i class="fa fa-mobile"></i>
        </div>
        <div class="info-content">
          <p class="info-sub-title"><a href="tel:<?=$thongtin['sodienthoai_vi'] ?>"><?=$thongtin['sodienthoai_vi'] ?></a></p>
        </div>
      </div>
      <div class="info-item">
        <div class="info-icon">
          <i class="fa fa-envelope"></i>
        </div>
        <div class="info-content">
          <p class="info-sub-title"><a href="mailto:<?=$thongtin['email_vi'] ?>"><?=$thongtin['email_vi'] ?></a></p>
        </div>
      </div>
    </div>
    <div class="logo_top">
      <a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a>
    </div>
    <div class="right_top">
      <?php include _source."lang.php"; ?>
      <div class="timkiem_top no_box">
        <!-- <a class="cur" onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')"><i class="fa fa-search"></i><u><?=$glo_lang['tim_kiem'] ?></u></a> -->
        <div class="search">
            <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
            <input class="input_search input_search_enter " type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
        </div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="header">
  <div class="pagewrap">
    <?php
      $hinhanh        = LAY_banner_new("`id_parent` = 26", 1);
      if(is_array($hinhanh)) {
    ?>
    <div class="logo-fix"><a href="<?=$full_url ?>"><img src="<?=full_src($hinhanh, '') ?>" alt="logo"></a></div>
    <?php } ?>
    <div class="box_menu">
      <?php include _source."menu_top.php"; ?>
    </div>
    <div class="timkiem-fix">
      <a onclick="if(!$('.timkiem-fix').hasClass('acti')) $('.timkiem-fix').addClass('acti'); else $('.timkiem-fix').removeClass('acti')" style="cursor:pointer"></a>
        <div class="search">
          <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter_new'); if($('.input_search_enter_new').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
          <input class="input_search input_search_enter_new fla_ff" type="text" value=""  data=".input_search_enter_new" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>