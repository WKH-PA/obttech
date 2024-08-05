<?php
  $kietxuat_name = DB_fet_rd("*", "#_danhmuc", "`step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "id");


  if(empty($kietxuat_name)) 
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  else
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];

  $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

  $wh           = "AND `id_parent` in (".$lay_all_kx.") AND `id` <>  '".$arr_running['id']."'";
  $numview      = 12;
  // $nd_kietxuat  = DB_fet(" * "," `#_baiviet` "," `showhi` =  1 AND `step` IN (".$slug_step.") $wh "," `catasort` DESC "," $numview","arr");
  $nd_kietxuat  = DB_fet_rd(" * "," `#_baiviet` ","  `step` IN (".$slug_step.") $wh "," `catasort` DESC, `id` DESC ", $numview);
  if(!count($nd_kietxuat)) {
    $nd_kietxuat  = DB_fet_rd(" * "," `#_baiviet` ","  `step` IN (".$slug_step.")"," RAND() ", $numview);
  }
  $nd_kietxuat_goiy = DB_fet(" * "," `#_baiviet` ","  `step` IN (".$slug_step.") $wh "," RAND()", $numview, "arr");

  // $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
  // $nd_total = mysqli_num_rows($nd_total);
  $list_hinhcon = LAY_hinhanhcon($arr_running['id'], 50);
  // $tinhnang_arr = DB_fet("*","`#_baiviet_tinhnang`","`showhi` = 1 AND `step` = '".$slug_step."' ","`catasort` ASC, `id` DESC","","arr", 1);
  // full_src($thongtin_step, '')
  // $tinhnang   = LAY_bv_tinhnang(2);
  $baiviet_ct = LAY_baiviet_chitiet($arr_running['id']);
  $tinhnang   = LAY_bv_gia(2);
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
<div class="bg_link_page wow fadeInUp" style="background-image:url(<?=full_src($thongtin_step, '') ?>);">
  <div class="pagewrap">
    <ul>
      <h3><?=$kietxuat_name ?></h3>
    </ul>
  </div>
</div>
<div class="page_conten_page wow fadeInUp">
  <div class="pagewrap">
    <div id="pro_img_main">
      <div class="viewLeft">
        <div id="bridal_images_list">
          <ul id="pro_img_slide">
            <li><a href='<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>'"><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>"></a></li>
            <?php
              $i = 1;
              foreach ($list_hinhcon as $rows) {
                $i++;
                if($i > 4) continue;
            ?>
            <li><a href='<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>'"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>" alt=""></a></li>
            <?php } ?>
          </ul>
          <script type="text/javascript" src="js/cloud-zoom.1.0.2.min.js"></script> 
        </div>
        <div id="bridal_images"> <a href='<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>' class='cloud-zoom' id='zoom1' rel="position: 'inside' , showTitle: false, adjustX:0, adjustY:0"><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>"></a> </div>
        <div class="dv-slider-nang no_box">
          <?php $data = array("2","3","4","5","6","6") ?>
          <div class="<?=!empty($load_ajax_all) ? "owl-auto-sp" : "owl-auto-sp" ?>  owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
            <?php if(count($list_hinhcon)){ ?>
              <div class="item">
                <li><a href='<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>'"><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>"></a></li>
              </div>
            <?php } ?>
              <?php
                $i = 1;
                foreach ($list_hinhcon as $rows) {
                  $i++;
              ?>
              <div class="item">
                <li><a href='<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>'"><img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin'], "thumbnew_") ?>"></a></li>
              </div>
              <?php } ?>
          </div>
          <div class="clr"></div>
        </div>
      </div>

    <div class="viewRight">
      <div class="titleView"><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></div>
      <?php
        $gia = GET_gia($arr_running['giatien'], $arr_running['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
      ?>
      <h4><?=$glo_lang['gia'] ?>: <?=$gia['text_gia'] ?> <?=$gia['text_km'] ?></h4>

      <ul class="desc">
        <?=$arr_running['p1'] != "" ? "<li>".$glo_lang['cart_ma_sp'].': '.$arr_running['p1']."</li>" : "" ?>
        <div class="dv-mota-sp"><?=SHOW_text($arr_running['mota_'.$lang]) ?><div class="clr"></div></div>
      </ul>
      <div class="clr"></div>
      <?php
        $lienhe = LAY_step(8,1);
      ?>
      <div class="dathang_id"><a <?=full_href($lienhe) ?>><i class="fa fa-shopping-cart"></i><?=$glo_lang['lien_he_dat_hang'] ?></a></div>
    </div>
    <!--end viewRight-->
    <div class="clr"></div>
    
  </div>
    <div class="title_page">
      <ul>
        <h3><?=$glo_lang['chi_tiet_san_pham'] ?></h3>
      </ul>
    </div>
    <div class="showText">
      <?=SHOW_text($arr_running['noidung_'.$lang]) ?><div class="clr"></div>
    </div>
    <?php include _source."fb_sharelink.php"; ?>  

  </div>
</div>
<div class="box_page wow fadeInUp">
  <div class="pagewrap">
    <div class="title_page">
      <ul>
        <h3><?=$glo_lang['san_pham_lien_quan'] ?></h3>
      </ul>
    </div>
    <div class="sanpham_id  pro_id_slider no_box">
      <!--  -->
      <?php $data = array("2","2","2","3","3","3") ?>
        <div class="owl-auto-sp owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="0">
      <?php 
        foreach ($nd_kietxuat as $rows) {
      ?>
      <div class="item">
        <ul class="wow flipInY">
          <a <?=full_href($rows) ?>>
          <li><?=full_img($rows) ?></li>
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