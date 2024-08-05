<?php include _source."banner_top.php";?>
<?php
  $banner_top = LAY_banner_new("`id_parent` = 27");
  if(is_array($banner_top)){
?>
<div class="box_home_top wow fadeInUp" id="conten_page">
  <!--  -->
  <?php $data = array("1","1","2","2","3","3") ?>
    <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="0">
    <?php 
      foreach ($banner_top as $rows) { 
    ?>
    <div class="item">
      <div class="banner_bosuutap">
        <li><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></li>
        <ul>
          <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          <p><?=SHOW_text($rows['mota_'.$lang]) ?></p>
          <h4><a <?=full_href($rows) ?>><?=$glo_lang['mua_ngay'] ?></a></h4>
          <div class="clr"></div>
        </ul>
      </div>
    </div>
    <?php } ?>
  </div>
  <!--  -->

  <div class="clr"></div>

</div>
<?php } ?>
<?php
  $sp_baiviet = LAY_baiviet(2, 12, "`opt` = 1");
  if(count($sp_baiviet)){
?>

<div class="box_page_2">

  <div class="pagewrap">

    <div class="title_page wow fadeInUp">

      <ul>

        <h3><?=$glo_lang['san_pham_noi_bac'] ?></h3>
		    <p><?=$glo_lang['san_pham_noi_bac_mo_ta'] ?></p>



      </ul>

    </div>
    <div class="product_list product_list_slider no_box product_list_2">
      <!--  -->
      <?php $data = array("1","1","2","2","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <div class="item">
          <ul class="wow flipInY">

            <a <?=full_href($rows) ?>>

            <li><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></li>

            <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>

            </a>

          </ul>
        </div>
        <?php } ?>

      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
  </div>
</div>
<?php } ?>

<?php
  $banner_top = LAY_banner_new("`id_parent` = 26", 1);
  if(is_array($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 32", 1);
?>
<div class="box_home_2" style="background: url(<?=full_src($hinhanh, '') ?>) center center no-repeat fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">

<div class="pagewrap wow fadeInUp">

	<ul><li><?=full_img($banner_top, '') ?></li>

    <h3><?=SHOW_text($banner_top['tenbaiviet_'.$lang]) ?></h3>
    <div><?=SHOW_text($banner_top['noidung_'.$lang]) ?></div>
  </ul>

	</div>

</div>
<?php } ?>
<?php
    $noidung= LAYTEXT_rieng(85);
    if(is_array($noidung)){
      $gioithieu = LAY_step(1, 1);
      $banner_top = LAY_banner_new("`id_parent` = 31", 2);
  ?>
<div class="box_auout_home">
  <?php $i = 0; foreach ($banner_top as $rows) { $i++ ;  if($i != 1) continue;  ?>
  <div class="imges_left_about"> <?=full_img($rows, '') ?></div>
  <?php } ?>



  <div class="pagewrap">

    <div class="title_page wow fadeInUp">

      <ul>

        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>

        <p><?=SHOW_text($noidung['p1_'.$lang]) ?></p>

      </ul>

    </div>

    <div class="auout_home wow fadeInUp">
      <li>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/<?=GET_ID_youtube($noidung['seo_name']) ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>      
      </li>
      <ul>

        <div class="showText"><?=SHOW_text($noidung['noidung_'.$lang]) ?><div class="clr"></div></div>

        <h3><a <?=full_href($gioithieu) ?>><?=$glo_lang['xem_them'] ?> <i class="fa fa-angle-double-right"></i></a></h3>

      </ul>

      <div class="clr"></div>
    </div>
  </div>
  <?php $i = 0; foreach ($banner_top as $rows) { $i++ ;  if($i == 1) continue;  ?>
  <div class="imges_right_about"> <?=full_img($rows, '') ?></div>
  <?php } ?>
</div>
<?php } ?>

<?php
  $sp_baiviet   = LAY_baiviet(5, 18, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="box_new_home">
  <div class="pagewrap">
    <div class="title_page wow fadeInUp">
      <ul>
        <h3><?=$glo_lang['tin_tuc_su_kien'] ?></h3><p><?=$glo_lang['tin_tuc_su_kien_mo_ta'] ?></p>
      </ul>
    </div>
    <div class="pro_id product_list_slider no_box">
      <!--  -->
      <?php $data = array("1","1","2","2","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <div class="item">
          <ul class="wow flipInY">
            <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li> 
            <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <h2><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></h2>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <h4><a <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-long-arrow-right"></i></a></h4>
          </ul>
        </div>
        <?php } ?>

      </div>
      <div class="clr"></div>
      <!--  -->
    </div>

  </div>

</div>
<?php } ?>

<?php
  $hinhanh        = LAY_banner_new("`id_parent` = 28", 1);
?>
<div class="newsletter_home" style="background: url(<?=full_src($hinhanh, '') ?>) center center no-repeat fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">

  <div class="pagewrap wow fadeInUp">

    <ul class="no_box">

      <h3><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>

      <p><?=$glo_lang['test_dang_ky_nhan_ban_tin'] ?></p>
      <form action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin" enctype="multipart/form-data">
        <div class="col-md row-frm">
          <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control" placeholder="<?=$glo_lang['ho_va_ten'] ?>">
        </div>
        <div class="col-md row-frm" >
          <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>">
        </div>
        <div class="col-md row-frm">
          <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control" placeholder="<?=$glo_lang['email'] ?> *">
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

	  <div class="title_page wow fadeInUp">

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
          <ul>
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