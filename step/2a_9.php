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
<div class="imges_id_page">
  <img src="<?=full_src($thongtin_step, '') ?>" alt="<?=$name_titile ?>">
</div>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="c-tin-ad">
<div class="product-view-ad right-new">
<div class="pro-view-left">
<div class="padding_pagewrap" style="    padding: 0;  box-shadow: none;">
  <div class="titile_view_pro">
    <ul>
      <h3><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h3>
    </ul>
  </div>
  <div class="hinhanh_view">
    <div class="container"> 
      <!--  -->
      <div class="mySlides"> <img class="animate_img" src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" style="width:100%"> </div>
        <?php
          $list_hinhcon   = LAY_hinhanhcon($arr_running['id'], 50);
          $list_hinhcon_c = count($list_hinhcon);
          $i = 0;
          foreach ($list_hinhcon as $rows) {
            $i++;
        ?>
        <div class="mySlides"> <img src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>" style="width:100%"> </div>
        <?php } ?>
        <?php if(count($list_hinhcon)){ ?>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next" onclick="plusSlides(1)">&#10095;</a>
        <?php } ?>
        <div class="caption-container">
          <p id="caption"></p>
        </div>
        <?php if(count($list_hinhcon)){ ?>
        <div class="row">
          <div class="dv-slider-nang no_box">
            <?php $data = array("2","3","3","4","5","5") ?>
            <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
                <div class="item">
                  <div class="column "> <img class="demo cursor dotxx" src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>" style="width:100%" onclick="currentSlide(1)"> </div>
                </div>
                <?php
                  $i = 1;
                  foreach ($list_hinhcon as $rows) {
                    $i++;
                ?>
                <div class="item">
                  <div class="column "> <img class="demo cursor dotxx" src="<?=checkImage($fullpath, $rows['icon'], $rows['duongdantin']) ?>" style="width:100%" onclick="currentSlide(<?=$i ?>)"> </div>
                </div>
                <?php } ?>
            </div>
            <div class="clr"></div>
          </div>
        </div>
        <?php } ?>
      <!--  -->
      <div class="clr"></div>
    </div>
    <script>
      var slideIndex = 1;
      showSlides(slideIndex);

      function plusSlides(n) {
        showSlides(slideIndex += n);
      }

      function currentSlide(n) {
        showSlides(slideIndex = n);
      }

      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) {slideIndex = 1}    
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " active";
      }
    </script>
  </div>
  <div class="fs-dtinfo">
    <div class="price_pro">
      <?=$arr_running['p1'] != "" ? "<p>".$glo_lang['cart_ma_sp'].': '.$arr_running['p1']."</p>" : "" ?>
      <?php
        $tinhnang_arr      = LAY_bv_tinhnang($slug_step);
        $i = 0;
        foreach($tinhnang_arr as $rows){
          // if($rows['id_parent'] != 0) continue;
          // if($rows['noi_bat']   != 1) continue;

          $tnoff_child  = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `showhi` = 1 AND `id_baiviet` = '".$arr_running['id']."' AND `id_tinhnang` = '".$rows['id']."' ORDER BY `id` DESC");

          if(!mysqli_num_rows($tnoff_child)) continue;
          $i++;
      ?>
      <p>
        <?=$rows['tenbaiviet_'.$lang] ?>: 
          <?php
            while ($rows_2 = mysqli_fetch_assoc($tnoff_child)) {
          ?>
          <span><?=$tinhnang_arr[$rows_2['id_val']]['tenbaiviet_'.$lang] ?></span>
          <?php } ?>
      </p>
      <?php } ?>

      <ul>
        <?php
          $gia = GET_gia($arr_running['giatien'], $arr_running['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
        ?>
        <h4><?=$glo_lang['gia'] ?>: <?=$gia['text_gia'] ?> <?=$gia['text_km'] ?></h4>
        <div class="dv-mota-sp"><?=SHOW_text($arr_running['mota_'.$lang]) ?><div class="clr"></div></div>

      </ul>
    </div>
    <div class="add_to_cart">
    <h4><a class="btn-secondary btn-orange preview cur" onclick="LOAD_popup_new('<?=$full_url."/pa-size-child/lien-he-ngay/?id=".$arr_running['id'] ?>', '480px')" class='cur'><?=$glo_lang['lien_he_ngay'] ?></a></h4>
    <div class="dv-popup-new no_box">
      <div class="dv-popup-new-child">
        <a class="popup-close"></a>
        <div class="dv-nd-popup"></div>
      </div>
    </div>
    <div class="clr"></div>
      <p><span><?=$glo_lang['goi_de_dat_ngay'] ?></span><?=$glo_lang['hotline'] ?>: <?php
                        $hotline_vi = explode("|", $thongtin['hotline_vi']);
                    $i = 0;
                    foreach ($hotline_vi as $val) {
                      $i++;
                      if($i > 1) echo ' - ';
                      echo '<a href="tel:'.$val.'">'.$val.'</a>';
                    }
                  ?></p>
    </div>
    <?php include _source."fb_sharelink.php"; ?>
  </div>
  <div class="clr"></div>
  <div class="detail-sp">
  <h5><?=$glo_lang['chi_tiet_san_pham'] ?></h5>
  <div class="rte">
    <div class="showText"><?=SHOW_text($arr_running['noidung_'.$lang]) ?><div class="clr"></div></div>
  </div>
  </div>
  <div class="clear"></div>
  </div>
  <div class="clr"></div>
</div>
<div class="clr"></div>
</div>

<?php include _source."right_conten.php" ?>
<div class="clr"></div>
</div>
<div class="clr"></div>
</div>