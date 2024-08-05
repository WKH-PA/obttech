<?php
  $name_titile = DB_fet_rd("*", "#_danhmuc", "`step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "id");
  if(empty($name_titile)) {
    $name_titile = $thongtin_step['tenbaiviet_'.$lang];
  }
  else {
    $name_titile = $name_titile[$arr_running['id_parent']]['tenbaiviet_'.$lang];
  }

  $lay_all_kx   = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "  AND `id_parent` = (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $numview      = 20;

  $nd_kietxuat  = DB_fet_rd(" * "," `#_baiviet` "," `step` IN (".$slug_step.") $wh "," `catasort` DESC ", $numview);

  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysqli_num_rows($nd_total);
  // $retuen_arr = array();
  // while ($r   = mysqli_fetch_assoc($nd_kietxuat)) {
  //   $retuen_arr[] = $r; 
  // }
  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  // $img_bg = checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']);
 
  // if($arr_running['icon_hover'] != "") {
  //   $img_bg = checkImage($fullpath, $arr_running['icon_hover'], $arr_running['duongdantin']);
  // }
  // 

?>
<div class="banner-detail">
  <img src="<?=full_src($thongtin_step, '') ?>" alt="<?=$name_titile ?>">
<!--  <h3>--><?//=$name_titile ?><!--</h3>-->
</div>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?></li>
      <div class="clr"></div>
  </ul>
</div>
</div>
<div class="foot-list">
  <div class="pagewrap">
    <div class="right-new dv-full-op">
      <div class="title_news">
        <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
        <li> <?=date("d/m/Y", $arr_running['ngaydang']) ?></li>
      </div>
      <div class="showText">
        <?=SHOW_text($arr_running['noidung_'.$lang]); ?><div class="clr"></div>
      </div>
      <div class="clr"></div>
      <?php include _source."fb_sharelink.php"; ?>
      <div class="dv-fb_coment">
        <?php include _source."fb_coment.php"; ?>
      </div>
    </div>
    <?php //include _source."left_conten.php";?>
    <div class="clr"></div>
  </div>
</div>


<div class="foot-list-1 foot-list">
  <div class="pagewrap">
    <h1><?=$glo_lang['bai_viet_lien_quan'] ?></h1>
    <!--  -->
    <ul class="kienthuc_add kienthuc_add_slider no_box">
        <?php $data = array("1","1","2","2","3","4") ?>
          <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php 
          foreach ($nd_kietxuat as $rows) {
        ?>
          <div class="item">
            <li>
              <div class="img">
                <a <?=full_href($rows) ?>><img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a>
              </div>
              <div class="titleOfFoodComponent">
                <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
              </div>
              <p><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></p>
              <p> <span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
              <div class="orange-optional">
                <a <?=full_href($rows) ?> class="orange-button"><?=$glo_lang['xem_chi_tiet'] ?> »</a>
              </div>
            </li>
          </div>
         <?php } ?>

        </div>
        <div class="clr"></div>
        <!--  -->
    </ul>
  <div class="clr"></div>
</div>
<div class="clr"></div>

</div>          