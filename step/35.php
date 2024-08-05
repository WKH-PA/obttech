<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? $_GET['key'] : '';
  $tn        = isset($_GET['tn']) ? $_GET['tn'] : '';


  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "") {
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  }


  // //check tieu thuyet
  if($slug_step == 1) {
    $wh .= " AND `id_baiviet` = 0";
  }
  //
  if($key != ""){
    $key_er = explode("/",$key);
    $time_bg = mktime(0,0,0, $key_er[1],$key_er[0],$key_er[2]);
    $time_en = mktime(23,59,59, $key_er[1],$key_er[0],$key_er[2]);
    $wh .= " AND `capnhat` > $time_bg AND `capnhat` < $time_en ";
  }
  if($tn != "") {
    $tn_z = str_replace("-", ",", $tn);
    $tn_c = explode(",", $tn_z);
    $tn_c = count($tn_c);
    $wh .= " AND `id` IN (SELECT `id_baiviet`  
          FROM `#_baiviet_select_tinhnang` 
          WHERE `id_val` IN ($tn_z) 
          GROUP BY `id_baiviet`
          HAVING COUNT(*) = $tn_c) ";
    // $wh .= " AND `id` IN (SELECT `id_baiviet`  
    //       FROM `#_baiviet_select_tinhnang` 
    //       WHERE `id_val` = '$tn_z' ) ";
  }

  include _source."phantrang_kietxuat.php";
  // include _source."phantrang_danhmuc.php";

  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);


  $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/');


  // full_src($thongtin_step, '')
  $tinhnang_arr      = LAY_bv_tinhnang($slug_step);
?>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="pagewrap page_conten_page">
  <div class="right_button_f wow fadeInRight">
    <a href="<?=$full_url."/du-an-dang-ban" ?>"><?=$glo_lang['du_an_dang_ban'] ?></a>
    <a href="<?=$full_url."/du-an-dang-tim-kiem" ?>"><?=$glo_lang['du_an_dang_tim_kiem'] ?></a>
    <a href="<?=$full_url."/dang-ky-mua" ?>"><?=$glo_lang['dang_ky_mua'] ?></a>
    <a href="<?=$full_url."/dang-ky-ban" ?>"><?=$glo_lang['dang_ky_ban'] ?></a>
  </div>
  <div class="padding_pagewrap">
    <h2 class="title_home title_home_1 wow flipInY"><?=SHOW_text($thongtin_step['tenbaiviet_'.$lang]) ?></h2>
    <div class="showText">
      <?php
        $baiviet = LAY_baiviet($slug_step, 4);
        $i = 0;
        foreach ($baiviet as $rows) {
          $i++;
      ?>
      <div class="why_home_<?=$i ?>">
        <div class="flex">
          <?php if($i == 1 || $i == 3){ ?>
          <li class="wow fadeInLeft"><?=full_img($rows, '') ?></li>
          <?php } ?>
          <ul class="wow fadeInRight">
            <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
            <p><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></p>
          </ul>
          <?php if($i == 2 || $i == 4){ ?>
          <li class="wow fadeInLeft"><?=full_img($rows, '') ?></li>
          <?php } ?>
          <div class="clr"></div>
        </div>
      </div>
      <?php } ?>
      <div class="clr"></div>
    </div>
    <?php include _source."fb_sharelink.php"; ?>
  </div>
</div>