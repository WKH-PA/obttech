<div class="dv-header-top header">
  <div class="pagewrap">
    <div class="dv-hd-left">
      <?php if($thongtin['diachi_'.$lang] != '') { ?>
      <a><i class="fa fa-map-marker"></i><?=$thongtin['diachi_'.$lang] ?></a>
      <?php } if($thongtin['email_vi'] != '') { ?>
      <a href="mailto:<?=$thongtin['email_vi'] ?>"><i class="fa fa-envelope-o"></i><?=$thongtin['email_vi'] ?></a>
      <?php } ?>
    </div>
    <div class="dv-hd-right">
      <?php
            $hotline_vi = explode("|", $thongtin['hotline_vi']);
        $i = 0;
        foreach ($hotline_vi as $val) {
          $i++;
          if($i > 1) echo ' - ';
          echo '<a href="tel:'.$val.'"><i class="fa fa-phone"></i><span>'.$val.'</span></a>';
        }
      ?>
      <?php include _source."lang.php" ?>
      <div class="dv-hd-timkiem">
        <a class="cur" onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')"><i class="fa fa-search"></i></a>
        <div class="timkiem_top no_box">
          <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
          <input class="input_search input_search_enter" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
        </div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="dv-header box_menu">
  <div class="pagewrap">
    <div class="dv-header-cont">
      <div class="dv-logo">
        <a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a>
      </div>
      <div class="dv-menu">
        <?php include _source."menu_top.php"; ?>
        <div class="dv-btn-right-hd">
          <a class="cur" onclick="LOAD_popup_new('<?=$full_url."/pa-size-child/lien-he-ngay/" ?>', '480px')"><i class="fa fa-bolt"></i><?=$glo_lang['dat_lich'] ?></a>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="dv-popup-new no_box">
  <div class="dv-popup-new-child">
    <a class="popup-close"></a>
    <div class="dv-nd-popup"></div>
  </div>
</div>