<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];

  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = isset($_GET['key']) ? true : false;

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($is_search){
    $slug_step      = "1,3,4";
    $name_titile    = $glo_lang['tim_kiem']; 
    // $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '6' LIMIT 1");
    // $thongtin_step = mysqli_fetch_assoc($thongtin_step);
  }
  else if($slug_table != 'step'){
      $lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
  }
  $wh = "";
  if($lay_all_kx != "") {
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  }
  
  if($is_search) {
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";
  }

  // //check tieu thuyet
  if($slug_step == 1) {
    $wh .= " AND `id_baiviet` = 0";
  }
  //

  include _source."phantrang_kietxuat.php";
  // include _source."phantrang_danhmuc.php";

  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);

  if($is_search != "") {
    $link_p = '<span>/</span><a>'.$glo_lang['tim_kiem']."</a>";
    $thongtin_step   = LAY_anhstep_now(3);
  }
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/');
  }

  // full_src($thongtin_step, '')
  // $sumenh = LAY_step(10, 1);
  // $sumenh_baiviet = LAY_baiviet(10, 3);
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
<div class="link_page">
  <div class="pagewrap">
   <ul>
     <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '|') ?></li></ul>
     <div class="clr"></div>
   </div>
 </div>
 <div class="page_conten_page pagewrap">
  <div class="content-right align-left wow fadeInDown">
    <h4 class="align-justify ani-item on-show"><?=SHOW_text($thongtin_step['p1_'.$lang]) ?></h4>
      <figure class="box-text ani-item on-show">
        <blockquote>
           <?=SHOW_text($thongtin_step['noidung_'.$lang]) ?>
        </blockquote>
      </figure>
      <div class="clr"></div>
    </div>
    <div id="cart_list" class="tb_rps">
      <?php
        $danhmuc  = LAY_danhmuc($slug_step,0,"`id_parent` = 0");
        foreach ($danhmuc as $dm) {
          $nd_kietxuat = LAY_baiviet($dm['step'], 0, "`id_parent` = '".$dm['id']."' ");
          if(!count($nd_kietxuat)) continue;
      ?>
      <div class="cohoi-nghenghiep">
        <div class="img_tuyedung"><p><span class="taptitel"><?=SHOW_text($dm['tenbaiviet_'.$lang]) ?></span></p></div>
        <section class="group-central set-post active" data-post="join">
          <div class="career-box ">
          <table class="table text-xs-center wow fadeInLeft">
            <thead>
              <tr>
                <th style="width: 50px"><?=$glo_lang['stt'] ?></th>
                <th><?=$glo_lang['text_vitri'] ?></th>
                <th style="width: 120px"><?=$glo_lang['so_luong'] ?></th>
                <th style="width: 160px"><?=$glo_lang['ngay_het_han'] ?></th>
                <th style="width: 140px"><?=$glo_lang['ung_tuyen'] ?></th>
              </tr>
            </thead>
            <tbody>
              <?php
                  $i = 0;
                  foreach ($nd_kietxuat as $rows) {
                    $i++;
              ?>
              <tr>
                <td title="<?=$glo_lang['stt'] ?>">
                  <span><?=$i ?></span>
                </td>
                <td title="<?=$glo_lang['text_vitri'] ?>">
                  <h2>
                    <a class="transition" <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h2>
                  </td>
                  <td title="<?=$glo_lang['so_luong'] ?>"><?=$rows['p1'] ?></td>
                   <td title="<?=$glo_lang['ngay_het_han'] ?>"><time><?=date("d/m/Y", $rows['ngaydang']) ?></time></td>
                  <td title="<?=$glo_lang['ung_tuyen'] ?>"><a onclick="LOAD_popup_new('<?=$full_url."/pa-size-child/lien-he-ngay/?id=".$rows['id'] ?>', '480px')" class="cta preview cur"><?=$glo_lang['ung_tuyen'] ?></a></td>

                </tr>
              <?php } ?>
              </tbody>
            </table>
          </div>
        </section>
      </div>
      <?php } ?>
    </div>
  <div class="clr"></div>
</div>
<div class="dv-popup-new no_box">
  <div class="dv-popup-new-child">
    <a class="popup-close"></a>
    <div class="dv-nd-popup"></div>
  </div>
</div>