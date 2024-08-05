<?php
  $hinhanh        = LAY_banner_new("`id_parent` = 32", 1);
?>
<div class="box_home_2 up wow fadeInUp" style="background: url(<?=full_src($hinhanh, '') ?>) center bottom; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
  <div class="pagewrap">
    <ul>
      <h3><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>
      <p><?=$glo_lang['test_dang_ky_nhan_ban_tin'] ?></p>
      <form class="dt-sc-subscribe-frm" action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin" >
        <div class="col-md-7 row-frm">
          <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control" placeholder="<?=$glo_lang['ho_va_ten'] ?>">
        </div>
        <div class="col-md-7 row-frm">
          <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>">
        </div>
        <div class="col-md-7 row-frm">
          <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control" placeholder="<?=$glo_lang['nhap_dia_chi_email'] ?> *">
        </div>
        <h4><a onclick="DANGKY_email('<?=$full_url ?>')" class="cur"><?=$glo_lang['dang_ky_ngay'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a></h4>
        <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
        <div class="clr"></div>
      </form>
    </ul>
  </div>
</div>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
?>
<div class="box_doitac_home">
  <div class="pagewrap">
	<div class="title_page wow flipInY">
      <ul>
		    <h3><?=$glo_lang['doi_tac_khach_hang'] ?></h3>
      </ul>
    </div>
    <div class="logo_doitac">
        <!--  -->
      <?php $data = array("2","3","4","5","6","6") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
        <?php 
          // $i = 0;
          foreach ($banner_top as $rows) { 
            // $i++;
            // if($i == 1) echo '<div class="item">';
        ?>
        <div class="item">
          <ul class="wow flipInY">
            <a <?=full_href($rows) ?>>
              <li ><img src="<?=full_src($rows, '') ?>"></li>
            </a>
          </ul>
        </div>
        <?php } // if($i == 2) { echo '</div>'; $i = 0;} } if($i == 1)  echo '</div>'; ?>

      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
  </div>
</div>
<?php } ?>
<?php
  $noidung    = LAYTEXT_rieng(82);
?>
<div class="footer wow fadeInUp">
  <div class="pagewrap">
    <div class="left_footer flex">
      <ul class="fot-1">
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
        <div class="n-foot">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>

      <ul>
        <?php
          $step       = 2;
          $sp_step    = LAY_step($step);
          $sp_baiviet = LAY_danhmuc($step, 10, "`id_parent` = 0");
        ?>
        <h3><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h3>
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
      <ul>
	      <?php
          $step       = 4;
          $sp_step    = LAY_step($step);
          $sp_baiviet = LAY_baiviet($step, 10, "`id_parent` = 0");
        ?>
        <h3><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h3>
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
		 <ul class="face_footer">
      <div class="fb-page" data-href="<?=$glo_lang['fanpage'] ?>" data-tabs="timeline" data-width="300" data-height="200" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
        <blockquote cite="<?=$glo_lang['fanpage'] ?>" class="fb-xfbml-parse-ignore"><a href="<?=$glo_lang['fanpage'] ?>"><?=$thongtin['tenbaiviet_vi'] ?></a></blockquote>
      </div>
      </ul>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>

<div class="bottom_ft wow fadeInUp">
	<div class="pagewrap">
      <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
      <ul>
        <?php include _source."mang_xa_hoi.php" ?>
        <div class="clr"></div>
      </ul>
      <div class="clr"></div>
    </div>
	</div>
<div id="back-top"><a href="#top">TOP</a></div>
<?php include _source."hotline.php" ?>
<?php include _source."check_yeu_thich_cookie.php" ?>