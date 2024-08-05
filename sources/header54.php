
<div class="box_menu_f">
<div class="box-menu-1">
<div class="l-header">
<div class="pagewrap">
  <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
  <div class="r-a-header">
    <div class="right_header">
    <ul>
    <li><i class="fa fa-phone"></i><?=$glo_lang['hotline'] ?>: <?php
                      $hotline_vi = explode("|", $thongtin['hotline_vi']);
                  $i = 0;
                  foreach ($hotline_vi as $val) {
                    $i++;
                    if($i > 1) echo ' - ';
                    echo '<a href="tel:'.$val.'"><span>'.$val.'</span></a>';
                  }
                ?></li>
    </ul>
    <div class="lang_top no_box">
      <?php include _source."lang.php"; ?>
    
    </div>
    </div>
  <div class="box_menu">
  <div>
  <?php include _source."menu_top.php"; ?>

  </div>
  </div>
  <div class="clr"></div>
</div>
<div class="clr"></div>
</div>
  </div>
  </div>
  <div class="clr"></div>
</div>
