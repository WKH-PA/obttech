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

  $tp = isset($_GET['tp']) ? $_GET['tp'] : 0;
  $qh = isset($_GET['qh']) ? $_GET['qh'] : 0;
  if($tp != 0) {
    $wh .= " AND `num_3` = '$tp'";
  }
  if($qh != 0) {
    $wh .= " AND `num_4` = '$qh'";
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

  // 
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li> -->
<div class="banner_detail" style="background-image: url('<?=full_src($thongtin_step, '') ?>');">
  <div class="link_page">
    <div class="pagewrap">
      <ul>
       <h3><?= SHOW_text($thongtin_step['tenbaiviet_'.$lang]) ?></h3>
       <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '|') ?></li>
      </ul>
       <div class="clr"></div>
     </div>
   </div>
 </div>
 <div class="page_conten_page pagewrap dv-phonggiaodich">
  <div class="col-lg-4">
    <div class="form">
      <div class="title">
        <?= SHOW_text($thongtin_step['noidung_'.$lang]) ?>
      </div>
      <div class="form-group">
        <input id="pac-input" class="controls pac-target-input" type="text" placeholder="<?=$glo_lang['nhap_dia_diem_can_tim'] ?>" onkeypress="return runScript(event)" autocomplete="off">
      </div>
      <div class="form-group">
        <?php 
          $khuvuc              = LAY_khuvuc();
        ?>
        <select name="n_tinhthanh" id="n_tinhthanh" onchange="LOAD_tinhthanh(this, '#id_quanhuyen', '<?=$glo_lang['chon_quan_huyen'] ?>');">
          <option value="0"><?=$glo_lang['chon_tinh_thanh'] ?></option>
          <?php foreach ($khuvuc as $kv) { if($kv['id_parent'] != 0) continue; ?>
          <option value="<?=$kv['id'] ?>" <?=LAY_selected($kv['id'], $tp) ?>><?=$kv['tenbaiviet_'.$lang] ?></option>
          <?php } ?>
        </select>
      </div>
      <div class="form-group">
        <select name="n_quanhuyen" id="id_quanhuyen">
          <option value="0"><?=$glo_lang['chon_quan_huyen'] ?></option>
          <?php if($tp != 0) { ?>
           <?php foreach ($khuvuc as $kv) { if($kv['id_parent'] != $tp) continue; ?>
          <option value="<?=$kv['id'] ?>" <?=LAY_selected($kv['id'], $qh) ?>><?=$kv['tenbaiviet_'.$lang] ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="form-group frm-btnwrap">
        <div class="frm-btn">
          <button type="submit" onclick="js_timkiem_pgd()"><?=$glo_lang['tim_kiem'] ?></button>
        </div>
      </div>
      <div class="clr"></div>
    </div>
    <div class="address-wrapper">
      <?php
        if($nd_total == 0){
          echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
        }
        else{
          foreach ($nd_kietxuat as $rows) {
      ?>
      <div class="item item_pgd">
        <div class="address">
          <div class="title"><a class="cur" onclick="initAutocomplete(<?=$rows['google_map'] ?>)"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></div>
          <?php if($rows['thuoc_tinh_1_'.$lang] != ""){ ?>
          <div class="location">
            <p><i class="fa fa-map-marker"></i> <?=SHOW_text($rows['thuoc_tinh_1_'.$lang]) ?></p>
          </div>
          <?php } ?>
          <?php if($rows['thuoc_tinh_2_vi'] != ""){ ?>
          <div class="hotline">
            <p><i class="fa fa-phone"></i> <?=SHOW_text($rows['thuoc_tinh_2_vi']) ?></p>
          </div>
          <?php } ?>
        </div>
        <div class="showText showText_pgd">
          <?=SHOW_text($rows['noidung_'.$lang]) ?>
        </div>
      </div>
      <?php }} ?>                                                                                               
    </div>
    <div class="clr"></div>

  </div>
  <div class="col-lg-8">
    <div class="map" id="map"></div>
    <input type="hidden" id="zoom" value="13" />
  </div> 

  <div class="clr"></div>
  <?php include _source."fb_sharelink.php"; ?>
  <div class="clr"></div>
</div>
<script src="js/shop_map.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4xj2chiZKLv_QCSsI5JvY7MHcjJQ9kFw&libraries=places&callback=initAutocomplete"      async defer></script>
<script>
  function js_timkiem_pgd(){
    var n_tinhthanh   = $("#n_tinhthanh").val();
    var id_quanhuyen  = $("#id_quanhuyen").val();
    AJAX_post(full_url +"/timkiem_pgd/", {"n_tinhthanh" : n_tinhthanh, "id_quanhuyen" : id_quanhuyen }, function(r){
      $(".address-wrapper").html(r);
      initAutocomplete('21.023440798075764','105.80935882794566');
    });
  }
</script>