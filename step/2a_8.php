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
<div class="bg_pageload" style="background-image:url(<?=full_src($thongtin_step, '') ?>);"></div>

<div class="link_page">

  <div class="pagewrap">

    <ul>

      <h3><?=$kietxuat_name ?></h3>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li>
    <div class="clr"></div>

    </ul>

  </div>

</div>

<div class="page_conten_page wow fadeInUp">

  <div class="pagewrap">
   <div class="right_conten">
      <div class="pro_view_id">

         <div class="pro_img_main">

            <div id="bridal_images"> <a href='<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>' class='cloud-zoom' id='zoom1' rel="position: 'inside' , showTitle: false, adjustX:0, adjustY:0"><img src="<?=checkImage($fullpath, $arr_running['icon'], $arr_running['duongdantin']) ?>"></a> </div>

            <div id="bridal_images_list">
              <?php //if(count($list_hinhcon)){ ?>
              <div class="dv-slider-nang no_box">
                <?php $data = array("2","3","3","3","4","4") ?>
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
              <?php //} ?>
              <script type="text/javascript" src="js/cloud-zoom.1.0.2.min.js"></script>
            </div>
        </div>
        <div class="right_pro_view">
          <div class="viewRight">

          <div class="titleView"><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></div>
          <?php
            $gia = GET_gia($arr_running['giatien'], $arr_running['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
          ?>
          <h5 class="h5_giact_sp"><?=$glo_lang['gia'] ?>: <?=$gia['text_gia'] ?> <?=$gia['text_km'] ?></h5>
          <ul class="desc">
            <?=$arr_running['p1'] != "" ? "<b>".$glo_lang['cart_ma_sp'].': '.$arr_running['p1']."</b>" : "" ?>
            <div class="dv-mota-sp"><?=SHOW_text($arr_running['mota_'.$lang]) ?><div class="clr"></div></div>
          </ul>
          <div class="clr"></div>
          <div class="cannang_check">
            <ul>
              <h2><?=$glo_lang['cang_nang'] ?></h2>
                <?php
                  foreach ($tinhnang as $rows) {
                    $dongia = check_gia_sql($arr_running['id'], $rows['id'], $arr_running['giatien']);

                ?>
                <li>
                  <label>
                    <input type="radio" name="aa" value="">
                    <a onclick="$('.gia_ban').html('<?=number_format($dongia) ?> <span><?=$glo_lang['dvt'] ?></span>');$('.gia_km').hide(); $('.gia_muti').val(<?=$rows['id'] ?>)"><?=$rows['tenbaiviet_'.$lang] ?></a>
                  </label>
                </li>
                <?php } ?>
              <div class="clr"></div>
            </ul>
          </div>
          <div class="qrcode_check">
            <ul>
            <h2><?=$glo_lang['qr_code'] ?>:</h2>
            <li><img src="qr_code/?qrcode=<?=base64_encode($full_url."/".$arr_running['seo_name']) ?>" width="200" height="200" alt="<?=$glo_lang['qr_code'] ?>"/></li>
            <div class="clr"></div>
            </ul>
          </div>

            <div class="clr"></div>

            <form action="<?=$full_url."/gio-hang/" ?>" method="post" name="orderform" id="orderform">
              <input type="hidden" name="id" value="<?=$arr_running['id'] ?>">
              <input type="hidden" name="gia_muti" class="gia_muti" value="">
              <div class="quantity">
                <p><?=$glo_lang['chon_mua'] ?>:</p>
                <label><?=$glo_lang['so_luong'] ?>:</label>
                <input type="button" class="minus" value="-">
                <input class="input-text qty text" title="Qty" size="4" value="1"  name="qty_cart" id="quantity" max="50" min="1" step="1">
                <input type="button" class="plus" value="+">
                <a onclick="$('#orderform').submit()" style="cursor:pointer"><?=$glo_lang['mua_hang'] ?></a>
              </div>
            </form>

          <div class="clr"></div>
          <?php include _source."fb_sharelink.php"; ?>

          </div>

        

         </div>

        <div class="clr"></div>
        <div class="ct_sp_ad">
          <div id="pro_tabs">
            <div class="box_tab">
              <ul class="listtabs">
                <li><a onclick="js_tab(1)" class="cur a_tab a_tab_1 selected"><?=$glo_lang['chi_tiet_san_pham'] ?></a></li>
                <li><a onclick="js_tab(2)" class="cur a_tab a_tab_2"><?=$glo_lang['danh_gia_san_pham'] ?></a></li>
                <div class="clr"></div>
              </ul>
            </div>
          </div>
          <div id="tab1" class="tabs selected">
            <div class="showText"><?=SHOW_text($arr_running['noidung_'.$lang]) ?><div class="clr"></div></div>
          </div>
          <div id="tab2" class="tabs">
            <?php include _source."binhluan.php" ?>
          </div>
          <script type="text/javascript">
            function js_tab(id){
              $(".a_tab, .tabs").removeClass("selected");
              $("#tab"+id).addClass("selected");
              $(".a_tab_"+id).addClass("selected");
              window.scrollTo(window.scrollX, window.scrollY - 1);
              window.scrollTo(window.scrollX, window.scrollY + 1);
            }
          </script>
        </div>

       </div>

    </div>
    <?php include _source."left_conten.php" ?>
    <div class="clr"></div>
  </div>
</div>



<div class="box_services_home_2">
  <div class="pagewrap">
    <div class="title_page">
      <ul>
        <h3><?=$glo_lang['san_pham_lien_quan'] ?></h3>
      </ul>
    </div>
    <div class="pro_list new_id_slider  pro_list_2 no_box">
      <!--  -->
        <?php $data = array("1","2","2","3","3","4") ?>
          <div class="owl-auto-sp owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="0">
        <?php 
          $view  = "slider";
          foreach ($nd_kietxuat as $rows) {
            $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
                    include _source.'home_temp.php';
          }
        ?>
        </div>
        <div class="clr"></div>
        <!--  -->
    </div>
  </div>
</div>