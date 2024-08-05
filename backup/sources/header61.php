<div class="header_top">
  <div class="pagewrap">
    <div class="left_header">
      <ul>
       <li><i class="fa fa-volume-control-phone"></i><?=$glo_lang['hotline'] ?>: <?php
                            $hotline_vi = explode("|", $thongtin['hotline_vi']);
                        $i = 0;
                        foreach ($hotline_vi as $val) {
                          $i++;
                          if($i > 1) echo ' - ';
                          echo '<a href="tel:'.$val.'"><span>'.$val.'</span></a>';
                        }
                      ?></li>
        <li><i class="fa fa-envelope"></i><?=$glo_lang['email'] ?>: <?php 
              $email_vi = explode("|", $thongtin['email_vi']);
              $i = 0;
              foreach ($email_vi as $val) {
                $i++;
                if($i > 1) echo ' - ';
                echo '<a href="mailto:'.$val.'">'.$val.'</a>';
              }
            ?></li>

        <div class="clr"></div>
      </ul>
    </div>
    <div class="right_header">
      <ul>
        <li class="lcart"><i class="fa fa-cart-plus"></i><a href="<?=$full_url."/gio-hang" ?>"><?=$glo_lang['gio_hang'] ?> (<span class="is_num_cart"><?=isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0 ?></span>)</a></li>
        <li class="llove"><i class="fa fa-heart-o"></i><a href="<?=$full_url."/yeu-thich" ?>"><?=$glo_lang['yeu_thich'] ?></a></li>
        <?php include _source."lang.php"; ?>
        <div class="clr"></div>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="box_menu">
  <div class="pagewrap">
    <div class="logo_top">
      <li><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></li>
    </div>
	  <li class="li_timkiem">
      <a class="cur" onclick="if(!$('.timkiem_top').hasClass('acti')) $('.timkiem_top').addClass('acti'); else $('.timkiem_top').removeClass('acti')"><i class="fa fa-search"></i><u><?=$glo_lang['tim_kiem'] ?></u></a>
      <div class="timkiem_top no_box">
        <div class="search">
            <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
            <input class="input_search input_search_enter" type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
        </div>
      </div>
    </li>
    <div class="menu_top">
      <?php include _source."menu_top.php"; ?>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
