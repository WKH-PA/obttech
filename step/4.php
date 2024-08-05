<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];


  $key       = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $is_search = $motty == 'search' ? true : false;

  $lay_all_kx = "";
  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  if($is_search){
    $slug_step      = "2,3,4,5";
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
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/');
  }

  // full_src($thongtin_step, '')
?>
<div class="banner-detail">
  <img src="<?=full_src($thongtin_step, '') ?>" alt="<?=$name_titile ?>">
<!--  <h3>--><?//=$name_titile ?><!--</h3>-->
</div>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=$link_p ?></li>
      <div class="clr"></div>
  </ul>
</div>
</div>
<div class="foot-list">
  <div class="pagewrap">
    <div class="right-new dv-full-op">
      <ul class="dv-dichvu">
        <?php
          if($nd_total == 0){
            echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
          }
          else{
            foreach ($nd_kietxuat as $rows) {
        ?>
        <li>
          <div class="img">
            <a <?=full_href($rows) ?>><?=full_img($rows) ?></a>
          </div>
          <div class="dv-ridv">
            <div class="titleOfFoodComponent">
              <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
            </div>
            <p><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></p>
            <p> <span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <div class="orange-optional">
              <a <?=full_href($rows) ?> class="orange-button"><?=$glo_lang['xem_chi_tiet'] ?> »</a>
            </div>
          </div>
          <div class="clr"></div>
        </li>
        <?php }} ?>
      </ul>
      <div class="clr"></div>
  </ul>
  <div class="nums no_box">
    <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
    <div class="clr"></div>
  </div>
</div>
<?php //include _source."left_conten.php";?>
<div class="clr"></div>
</div>

</div>

