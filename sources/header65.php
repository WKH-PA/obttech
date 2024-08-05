<div class="top_header">
  <div class="pagewrap">
    <p><i class="fa fa-clock"></i> <?=$glo_lang['ho_tro_247'] ?></p>
    <a href="tel:<?=$thongtin['hotline_vi'] ?>" id="sc_button" class="sc_button color">
      <i class="fa fa-phone"></i><?=$thongtin['hotline_vi'] ?></a>
      <div class="clr"></div>
    </div>
  </div>
  <?php
    $hinhanh        = LAY_banner_new("`id_parent` = 27", 1);
    $hinhanh_new        = LAY_banner_new("`id_parent` = 32", 1);
    $bg = "";
    if(is_array($hinhanh)){
      $bg = "url(".full_src($hinhanh, '').") bottom center";
    }
  ?>
  <div class="header" style="background: #ee4b50 <?=$bg ?> ; transition: .3s all ease; background-repeat: no-repeat; background-size: contain;">
    <div class="pagewrap">
      <div class="logo_top">
        <a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a>
        <div class="slogan"><h4><?=$glo_lang['slugan_1'] ?></h4>
          <h3><?=$glo_lang['slugan_2'] ?></h3>
        </div>
        <?php
          if(is_array($hinhanh_new)){
            echo '<img src="'.full_src($hinhanh_new, '').'" alt="'.$hinhanh_new['tenbaiviet_'.$lang].'">';
          }
        ?>
        
        <div class="clr"></div>
      </div>

    </div>
  </div>
  <div class="bottom_header">
    <div class="pagewrap">
      <div class="box_menu">
        <?php include _source."menu_top.php"; ?>
        <div class="clr"></div>
      </div>
      <div class="timkiem_top no_box">
        <div class="search">
            <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
            <input class="input_search input_search_enter fla_ff" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
