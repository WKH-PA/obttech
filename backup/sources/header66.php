<?php
  $bg = "";
  $hinhanh        = LAY_banner_new("`id_parent` = 27", 1);
  if(is_array($hinhanh)) {
    $bg = "background: url(".full_src($hinhanh, '').") bottom no-repeat; background-size: cover;";
  }
?>
<div class="dv-header-top" style="<?=$bg ?>">
  <div class="pagewrap">
    <div class="dv-right-top">
      <a class="cur a_gioi_thieu_mb" onClick="$('.ul_list_t99').toggle()"><i class="fa fa-align-right"></i><?=$glo_lang['gioi_thieu'] ?></a>
      <ul class="ul_list_t99">
        <?php
          $dulieu = LAY_dulieusn();
          foreach ($dulieu as $rows) {
        ?>
        <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
      <ul class="socical">
        <?php include _source."mang_xa_hoi.php" ?>
        <div class="clr"></div>
      </ul>
    </div>

    <div class="clr"></div>
  </div>
</div>
<div class="dv-header">
  <div class="pagewrap">
    <div id="navbar"><span onclick="openNav()"><a>Menu <i class="fa fa-bars"></i></a></span> </div>
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> 
      <?php include _source."menu_top.php"; ?>
    </div>
    <a href="<?=$full_url ?>" class="h-a-header"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a>
    <div class="logo_top">
      <a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a>
      <h3><?=$glo_lang['slugan_1'] ?><br><?=$glo_lang['slugan_2'] ?></h3>
      <h5><img src="delete/No1.png"></h5>
    </div>
    
    <div class="hotline">
      <p><a class="text" href="tel:<?=$thongtin['hotline_vi'] ?>"><i class="fa fa-phone cttnang1"></i>
        <span><?=$glo_lang['ho_tro_247'] ?></span><strong class="cttnang"><?=$thongtin['hotline_vi'] ?></strong></a>
      </p>
    </div>
    <div class="timkiem_top no_box">
      <a class="cur" onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')"><i class="fa fa-search"></i><u><?=$glo_lang['tim_kiem'] ?></u></a>
      <div class="search">
          <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
          <input class="input_search input_search_enter fla_ff" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>