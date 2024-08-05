<?php
  $kietxuat_name = DB_fet_rd("*", "#_danhmuc", "`step` = '".$slug_step."' AND `id` = '".$arr_running['id_parent']."'", "`id` DESC", 1, "id");
  if(empty($kietxuat_name)) {
    $kietxuat_name = $thongtin_step['tenbaiviet_'.$lang];
  }
  else {
    $kietxuat_name = $kietxuat_name[$arr_running['id_parent']]['tenbaiviet_'.$lang];
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
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
  <div class="link_page">
    <div class="pagewrap">
     <ul>
       <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '|') ?></li></ul>
       <div class="clr"></div>
     </div>
   </div>
   <div class="pagewrap page_conten_page">
    <div class="tin_left">
      <div class="title_news">
        <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
        <li><i class="fa fa-calendar"></i> <?=date("d/m/Y", $arr_running['ngaydang']) ?></li>
      </div>
      <div class="ctas">
        <a onclick="LOAD_popup_new('<?=$full_url."/pa-size-child/lien-he-ngay/?id=".$arr_running['id'] ?>', '480px')" class="btn-apply preview cur"><?=$glo_lang['nop_don_ung_tuyen'] ?></a>
      </div>
      <!-- <div class="desc-job">
        <p class="desc salary"><strong>Lương:</strong> 15.000.000 - 25.000.000 VNĐ</p>
        <p class="desc location"><strong>Nơi làm việc:</strong> Miền Bắc</p>
        <p class="desc location"><strong>Thời gian làm việc:</strong> T2-T6 (08:30 ~17:30)</p>
        <p class="desc date"><strong>Hạn nộp hồ sơ:</strong> 30/12/2020</p>
      </div> -->
      <div class="showText">
        <div class="content-article">
          <!-- <h2>Mô tả công việc</h2> -->
          <div class="showText">
            <?=SHOW_text($arr_running['noidung_'.$lang]); ?><div class="clr"></div></div>
          </div>
        </div>

        <?php include _source."fb_sharelink.php"; ?>
        <div class="dv-fb_coment">
          <?php include _source."fb_coment.php"; ?>
        </div>
      </div>

      <?php include _source."right_conten.php" ?>
      <div class="clr"></div>
    </div>
<div class="dv-popup-new no_box">
  <div class="dv-popup-new-child">
    <a class="popup-close"></a>
    <div class="dv-nd-popup"></div>
  </div>
</div>