<div class="box_menu_f">
  <div class="box-menu-1">
    <div class="l-header" id="navbar">
      <div class="pagewrap">
        <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
        <div class="r-a-header">
          <div class="right_header">
            <div class="lang_top">
              <div class="dropdown no_box">
                <?php include _source."lang.php"; ?>
              </div>
            </div>
            <ul>
              <li><i class="fa fa-phone"></i><?=$glo_lang['hotline'] ?>: <?php
                        $hotline_vi = explode("|", $thongtin['hotline_vi']);
                    $i = 0;
                    foreach ($hotline_vi as $val) {
                      $i++;
                      if($i > 1) echo ' - ';
                      echo '<a href="tel:'.$val.'">'.$val.'</a>';
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
            </ul>
            <div class="clr"></div>
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