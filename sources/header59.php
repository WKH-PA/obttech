<div class="box_menu_f">
  <div class="box-menu-1">
    <div class="l-header">
      <div class="bg_color">
        <div class="pagewrap">
          <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
          <div class="slogan-logo">
            <?php include _source."lang.php"; ?>
            <div class="hotline_header">
              <ul>
                <li><i class="fa fa-volume-control-phone" ></i></li>
                <h3><b><?=$glo_lang['hotline'] ?></b><?php
                        $hotline_vi = explode("|", $thongtin['hotline_vi']);
                    $i = 0;
                    foreach ($hotline_vi as $val) {
                      $i++;
                      if($i > 1) echo ' - ';
                      echo '<a href="tel:'.$val.'"><span>'.$val.'</span></a>';
                    }
                  ?></h3>
                <div class="clr"></div>
              </ul>
              <div class="clr"></div>
              <div class="timkiem_top no_box">
                <div class="search">
                    <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
                    <input class="input_search input_search_enter " type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
                </div>
              </div>
            </div>

          </div>

          <div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="bg_menu_top">
      <div class="pagewrap">
        <div class="box_menu">
          <div>
            <?php include _source."menu_top.php"; ?>
          </div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
</div>