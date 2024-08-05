<div class="box_menu_f">
  <div class="box-menu-1">
    <div class="l-header">
      <div class="pagewrap">
        <div class="logo_top"><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></div>
        <div class="box_menu">
          <?php include _source."menu_top.php"; ?>
        </div>
        <div class="header-contact-info">
          <div class="right_header">
            <?php include _source."lang.php"; ?>
            
          </div>
          <ul>
            <li>
              <div class="icon"><i class="fa fa-phone"></i></div>
              <div class="title"><h6><?php
                            $hotline_vi = explode("|", $thongtin['hotline_vi']);
                        $i = 0;
                        foreach ($hotline_vi as $val) {
                          $i++;
                          if($i > 1) echo ' - ';
                          echo '<a href="tel:'.$val.'"><span>'.$val.'</span></a>';
                        }
                      ?></h6></div></li>
            </ul>
          </div>
          <div class="clr"></div>
        </div>
      </div>
    </div>
    <div class="clr"></div>
  </div>

