<div class="bg_menu_top">
    <div class="mobile-menu-area">
        <div id="content_menu_mobile">
            <div class="header_menu_mobile">
                <a href="#menu" class="btn_menu">
                    <span class="ham"></span>
                </a>
            </div>
            <nav id="menu">
                <div id="panel-menu">
                    <?php include _source . "menu_top.php"; ?>
                </div>
            </nav>
        </div>
    </div>
    <?php include _source . "lang.php"; ?>

    <div class="logo_top"><a href="<?= $full_url ?>"><img src="<?= full_src($thongtin, '') ?>"
                                                          alt="<?= $thongtin['tenbaiviet_' . $lang] ?>"></a></div>

    <div class="timkiem_top no_box">
        <a class="cur"
           onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')">
            <!-- <i class="fa fa-search"></i> -->
            <img src="images/search.png" alt="search">
            <!-- <u><?= $glo_lang['tim_kiem'] ?></u> -->
        </a>
        <div class="search">
            <a onClick="SEARCH_timkiem('<?= $full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') "
               style="cursor:pointer"> <i class="fa fa-search"></i></a>
            <input class="input_search input_search_enter " type="text" value="" data=".input_search_enter"
                   data-href="<?= $full_url ?>/search/?key=" placeholder="<?= $glo_lang['nhap_tu_khoa_tim_kiem'] ?>"/>
        </div>
    </div>
    <div class="clr"></div>
</div>