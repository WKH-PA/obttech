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
  if($lay_all_kx != "")
    $wh = "  AND `id_parent` in (".$lay_all_kx.") ";
  
  if($is_search)
    $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%')";

  // //check tieu thuyet
  if($slug_step == 1) {
    $wh .= " AND `id_baiviet` = 0";
  }
  //

  include _source."phantrang_kietxuat.php";
  // include _source."phantrang_danhmuc.php";

  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);
  $retuen_arr = array();
  while ($r   = mysqli_fetch_assoc($nd_kietxuat)) {
    $retuen_arr[] = $r; 
  }
  if($is_search != "") {
    $link_p = '<span>/</span><a>'.$glo_lang['tim_kiem']."</a>";
    $thongtin_step   = LAY_anhstep_now(3);
  }
 
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/');
  }

  // full_src($thongtin_step, '')
 
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
<div class="page_conten">
  
  <div class="right_conten">
    <div class="box_id">
      <div class="titile_home">
        <h3><?=$name_titile ?></h3>
      </div>
      <?php 
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }else{
          $i = 0;
          if($pzer == 1 && !$is_search){
      ?>
      <div class="one_new_home">
        <li><a <?=full_href($retuen_arr[0]) ?>><?=full_img($retuen_arr[0], '') ?></a></li>
        <ul>
          <h3><a <?=full_href($retuen_arr[0]) ?>><?=SHOW_text($retuen_arr[0]['tenbaiviet_'.$lang]) ?></a></h3>
          <p><span class="lm_4"><?=SHOW_text(strip_tags($retuen_arr[0]['mota_'.$lang])) ?></span></p>
        </ul>
        <div class="clr"></div>
      </div>
      <div class="one_new_home_right">
        <?php 
          $i = 0;
          foreach ($retuen_arr as $rows) {
           $i++; 
           if($i < 2 || $i > 6) continue;
        ?>
        <ul>
          <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
          <div class="clr"></div>
        </ul>
        <?php } ?>
      </div>
      <div class="clr"></div>
      <div class="line_tti_more"></div>
      <?php 
        }
        $j = 0; 
        foreach ($retuen_arr as $rows) {
          $j++;
          if($pzer == 1 && $j <= 6 && !$is_search) continue;

      ?>
      <div class="tti_more">
        <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
        <ul>
          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
          <h4><i class="fa fa-calendar"></i>Thứ ba, 11:30 Ngày 05/06/2018.</h4>
          <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
        </ul>
        <div class="clr"></div>
      </div>
      <?php } ?>
      <?php } ?>
      
      <div class="clr"></div>
      <div class="nums no_box">
          <ul>
            <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
          </ul>
          <div class="clr"></div>
        </div>
    </div>
  </div>
  <?php include _source."left_conten.php";?>
  <div class="clr"></div>
</div>
