<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];


  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = $motty == 'search' ? true : false;

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($is_search){
    $slug_step      = "2,3";
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
    $wh .= " AND (`tenbaiviet_".$lang."` LIKE '%".$key."%' )";
  }


  //

  include _source."phantrang_kietxuat.php";
  // include _source."phantrang_danhmuc.php";

  // $anhcon   = LAY_anhstep($thongtin_step['id'], 1);

  if($is_search){
    $link_p = '<span>/</span><a>'.$glo_lang['tim_kiem']."</a>";
    $thongtin_step   = LAY_anhstep_now(3);
  }
 
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '|');
  }

  // full_src($thongtin_step, '')
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
<div class="banner_detail" style="background-image: url('<?=full_src($thongtin_step, '') ?>');">
  <div class="link_page">
    <div class="pagewrap">
     <ul>
       <h3><?=$name_titile  ?></h3>
       <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '|') ?></li>
     </ul>
       <div class="clr"></div>
     </div>
   </div>
 </div>
 <div class="page_conten_page pagewrap">
  <div class="dv-doitac">
    <h2 class="tiltle"><?=SHOW_text($thongtin_step['p1_'.$lang]) ?></h2>
    <div class="flex">
      <?php 
          if($nd_total == 0){
            echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
          }
          else{
            foreach ($nd_kietxuat as $rows) {
        ?>
        <div class="item">
          <div class="title"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></div>
          <div class="icon"><?=full_img($rows, '') ?></div>
          <div class="dv-nddlh">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
        </div>
        <?php }} ?>
        <div class="clr"></div>
    </div>
     <div class="clr"></div>
      <div class="nums no_box">
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>



  <?php include _source."fb_sharelink.php"; ?>
  <div class="clr"></div>
</div>