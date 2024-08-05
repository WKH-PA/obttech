<div class="box_menu_f">
  <div class="box-menu-1">
    <div class="l-header">
      <div class="pagewrap">
        <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
        <div class="box_menu">
          <div><?php include _source."menu_top.php"; ?></div>
        </div>
        <div class="hotline"><?php
                        $hotline_vi = explode("|", $thongtin['hotline_vi']);
                    $i = 0;
                    foreach ($hotline_vi as $val) {
                      $i++;
                      if($i > 1) echo ' - ';
                      echo '<a href="tel:'.$val.'">'.$val.'</a>';
                    }
                  ?></div>
        <div class="header-ab-a">
          <div class="column dt-sc-one-half ">
            <ul class="dt-sc-sociable">
              <?php include _source."mang_xa_hoi.php" ?>
              <?php include _source."lang.php"; ?>
            </ul>  
          </div>
        </div>

        <div id="searchForm">

          <div class="timkiem_top">
            <input id="search" class="siteSearchInput ui-autocomplete-input input_search input_search_enter" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" >
            <a class="a_click_timkiem" onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer"><img src="images/icon/search.png" alt="Search"></a>
            <a onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')" class="cur siteSearchSubmit btn-primary-action">
              <div class="sprites-icons sprites-size-half sprites-search-black"></div><span>Search</span>
            </a>
          </div>
        </div>


        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="clr"></div>
</div>

