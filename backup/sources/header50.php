<div class="box_menu">
  <div class="pagewrap">
    <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
    <div class="logo-scroll"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
    <div class="menu_top">
      <?php include _source."menu_top.php"; ?>
      <div class="right_header">
        <ul>
          <li>
            <a class="cur" onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')"><i class="fa fa-search"></i><u><?=$glo_lang['tim_kiem'] ?></u></a>
            <div class="timkiem_top no_box">
              <div class="search">
                  <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
                  <input class="input_search input_search_enter" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
              </div>
            </div>
          </li>
          <?php include _source."lang.php"; ?>
          </li>
          <div class="clr"></div>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
