<?php
  if((!empty($thongtin_step) && $thongtin_step['num_view'] == 0) || empty($thongtin_step))
      $numview          = 12;
  else $numview         = $thongtin_step['num_view'];


  $key            = isset($_GET['key']) ? str_replace("+", " ", strip_tags($_GET['key'])) : '';
  $tn             = isset($_GET['tn']) ? $_GET['tn'] : '';
  $sort           = isset($_GET['sort']) ? $_GET['sort'] : '';
  $is_search      = $motty == 'search' ? true : false;


  $name_titile      = !empty($arr_running['tenbaiviet_'.$lang]) ? SHOW_text($arr_running['tenbaiviet_'.$lang]) : "";
  $wh               = "";
  $nd_title         = "";
  
  
  if(isset($_GET['pro']) && ($_GET['pro'] == 1 || $_GET['pro'] == 2)) {
    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysqli_fetch_assoc($thongtin_step);

    if($_GET['pro'] == 1) {
      $name_titile    = $glo_lang['san_pham_ban_chay']; 
      $wh .= " AND `opt` = 1  ";
    }
    else {
      $name_titile    = $glo_lang['san_pham_khuyen_mai']; 
      $wh .= " AND `opt1` = 1  ";
    }

  }
  
  else if($motty == "khuyen-mai"){
    
    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysqli_fetch_assoc($thongtin_step);
    $name_titile    = $glo_lang['khuyen_mai']; 
 
    $wh            .= " AND `step` IN (".$slug_step.") AND `giakm` <> 0 ";

  }
  else if($motty == "yeu-thich"){
    $slug_step = 2;
    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysqli_fetch_assoc($thongtin_step);
    $name_titile    = $glo_lang['danh_sach_yeu_thich']; 
 
    $wh            .= " AND `step` IN (".$slug_step.")  ";

    //cehck yt
    // $check = DB_que("SELECT `id_baiviet` FROM `#_yeuthich` WHERE `id_member` = '".@$_SESSION['id']."' AND `showhi` = 1 LIMIT 1");
    // $id_baiviet  = "";
    // while ($rows = mysqli_fetch_assoc($check)) {
    //   $id_baiviet  = $id_baiviet  == "" ? $rows['id_baiviet'] : ",".$rows['id_baiviet'];
    // }
    // if($id_baiviet != "") {
      $wh .= " AND `id` IN (SELECT `id_baiviet` FROM `#_yeuthich` WHERE `id_member` = '".@$_SESSION['id']."' AND `showhi` = 1) ";
    // }
    //
  }
  else if($is_search){
    $slug_step      = 2;//LAY_id_step(2);

    $thongtin_step  = DB_que("SELECT * FROM `#_step` WHERE `id` = '$slug_step' LIMIT 1");
    $thongtin_step  = mysqli_fetch_assoc($thongtin_step);
    $name_titile    = $glo_lang['tim_kiem']; 
 
    $wh .= " AND `step` IN (".$slug_step.")  ";
    if($key != ""){
      $wh .= " AND (`tenbaiviet_vi` LIKE '%".$key."%' OR `tenbaiviet_en` LIKE '%".$key."%' OR `p1` LIKE '%".$key."%')";
    }

    
  }
  else if($slug_table  == 'step'){
      // $lay_all_kx = LAYDANHSACH_idkietxuat(0, $slug_step);
      $tenhienthi = SHOW_text($thongtin_step['tenbaiviet_'.$lang]);
      $nd_title   = SHOW_text($thongtin_step['noidung_'.$lang]);

      // $danhmuc_list = LAY_danhmuc($slug_step, 0 , "`id_parent`  = 0");
  }
  else{
      $tenhienthi     = SHOW_text($arr_running['tenbaiviet_'.$lang]);
      $lay_all_kx     = LAYDANHSACH_idkietxuat($arr_running['id'], $slug_step);
 
      $wh .= "  AND (FIND_IN_SET('".$arr_running['id']."', `id_parent_muti`) OR (`id_parent` in (".$lay_all_kx."))) "; 
      $nd_title       = SHOW_text($arr_running['noidung_'.$lang]);


      // $danhmuc_list   = LAY_danhmuc($slug_step, 0, "`id_parent` = '".GET_danhmuc_pr($arr_running['id'], 2)."' ");
  
  }

  if($tn != "") {
    // $tn   = str_replace(".", ",", $tn);
    // $tn_c = explode(",", $tn);
    // $tn_c = count($tn_c);
    // $wh .= " AND `id` IN (SELECT `id_baiviet`  
    //       FROM `#_baiviet_select_tinhnang` 
    //       WHERE `id_tinhnang` IN ($tn) 
    //       GROUP BY `id_baiviet`
    //       HAVING COUNT(*) = $tn_c) ";
    $wh .= " AND `id` IN (SELECT `id_baiviet`  
          FROM `#_baiviet_select_tinhnang` 
          WHERE `id_val` = '$tn' ) ";
  }
  // if($sort == 1) {
  //   $catasort = '`giatien` ASC, `catasort` DESC, `id` DESC';
  // }
  // else if($sort == 2) {
  //   $catasort = '`giatien` DESC, `catasort` DESC, `id` DESC';
  // }
  // else if($sort == 3) {
  //   $catasort = '`id` DESC, `catasort` DESC';
  // }
  // else if($sort == 4) {
  //   $catasort = '`id` ASC, `catasort` DESC';
  // }
  if(isset($_GET['th'])) {
    $wh .= " AND `id` IN (SELECT `id_baiviet` FROM `#_baiviet_select_tinhnang` WHERE `id_val` = '".$_GET['th']."' AND `show` = 1) ";
    $name_titile = DB_que("SELECT * FROM `#_baiviet_tinhnang` WHERE `id` = '".$_GET['th']."' LIMIT 1");
    $name_titile = mysqli_result_me($name_titile, 0, "tenbaiviet_".$lang);
  }
  //phan thuong hieu
  if($slug_step == 11) {
    if($slug_table  == 'step'){
      $slug_step = 2;
    }
    else {
      $slug_step = 2;
      $wh = " AND `num_3` = '".$arr_running['id']."' ";
    }
  }
  //

  include _source."phantrang_kietxuat.php";
  if($motty == "yeu-thich") {
    $link_p = '<span>/</span><a>'.$glo_lang['danh_sach_yeu_thich']."</a>";
  }
  // else if($motty == "khuyen-mai") {
  //   $link_p = '<span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span><a>'.$glo_lang['khuyen_mai']."</a>";
  // }
  else   if($is_search != "") {
    $link_p = '<span>/</span><a>'.$glo_lang['tim_kiem']."</a>";
  }
  else {
    $link_p =  GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/');
  }
  // full_src($thongtin_step, '')
  $quatang_sp    = LAY_baiviet(14, 0, "`opt1` = 1", '', 'id');
?>
<!-- <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=$link_p ?> </li> -->
<div class="page_conten_page">
  <div class="pagewrap">
    <div class="link_page">
      <ul>
        <li><a href="<?=$full_url ?>"><i class="fa fa-home"></i><?=$glo_lang['trang_chu'] ?></a><?=$link_p ?> </li>
        <div class="clr"></div>
      </ul>
    </div>
    <div class="titile_page">
      <ul>
        <h3><?=$name_titile ?></h3>
        <div class="clr"></div>
      </ul>
    </div>
    
    <div class="padding_pagewrap">
      
      <div class="rihgt_sp">
        <?php 
          if(!empty($arr_running['id_parent_muti']) && $arr_running['id_parent_muti'] != ""){ 
            $bvtinhnang = LAY_bv_tinhnang($slug_step);
            $id_parent_muti = explode(",", $arr_running['id_parent_muti']);
        ?>
        <div id="pro_tabs">
          <div class="box_tab">
            <ul class="listtabs">
              <?php foreach ($id_parent_muti as $tn) {  ?>
              <li><a href="<?=$full_url."/$motty/?tn=".$tn ?>" class="<?=isset($_GET['tn']) && $_GET['tn'] == $tn ? "selected" : "" ?> "><?=SHOW_text($bvtinhnang[$tn]['tenbaiviet_'.$lang]) ?></a></li>
              <?php } ?>
              <div class="clr"></div>
            </ul>
          </div>
        </div>
        <?php } ?>
        <div class="right_conten_ajax">
          <div class="pro_home_id_2 pro_home_id_2_ds box_padding flex ">
            <?php 
                if($nd_total == 0){
                    echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
                }else{
                  while ($rows = mysqli_fetch_assoc($nd_kietxuat)) { 
                    $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','' );
                ?>
                <ul>
                  <!-- <?=$gia['pt'] != 0 ? '<div class="discount-tag">-'.$gia['pt']."%</div>" : "" ?> -->
                  <a <?=full_href($rows) ?>>
                    <li><?=full_img($rows) ?></li>
                    <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
                    <h4><?=$gia['text_gia'].$gia['text_km'] ?></h4>
                  </a>
                  <div class="view_more_pro">
                    <div class="clolum_id"><a class="cur p_yeuthich p_yeuthich_<?=$rows['id'] ?>" onclick="ADD_yeuthich(this, <?=$rows['id'] ?>)" data="0"><i class="fa fa-heart-o" ></i></a></div>
                    <div class="clolum_id"><a <?=full_href($rows) ?>><i class="fa fa-eye" ></i></a></div>
                    <div class="clolum_id"><a href="<?=$full_url."/gio-hang/?id=".$rows['id'] ?>" ><i class="fa fa-cart-plus" ></i></a></div>
                    <div class="clr"></div>
                  </div>
                </ul>
              <?php }} ?>
            <div class="clr"></div>
          </div>
          <div class="nums no_box">
            <ul>
              <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
            </ul>
            <div class="clr"></div>
          </div>
        </div>
      </div>
      <div class="left_sp">
        <div class="menu_left">
          <?php
            $step = 2;
            $sp_danhmuc = LAY_danhmuc($step);
            if($slug_table  == 'step' || $motty == "search") {
              $tit_name = $glo_lang['san_pham'];
              $qr_danhm = LAY_danhmuc($step,0,"`id_parent` = 0");
            }
            else {
              $id_run = $arr_running['id'];
              if($sp_danhmuc[$arr_running['id']]['id_parent'] != 0) {
                $id_run = $sp_danhmuc[$arr_running['id']]['id_parent'];
              }
              $tit_name = SHOW_text($sp_danhmuc[$id_run]['tenbaiviet_'.$lang]);
              $qr_danhm = LAY_danhmuc($step,0,"`id_parent` = '$id_run'");
              if(count($qr_danhm) == 0) {
                $tit_name = $glo_lang['san_pham'];
                $qr_danhm = LAY_danhmuc($step,0,"`id_parent` = 0");
              }
            }
          ?>
          <ul>
            <h3><?=$tit_name ?></h3>
            <?php
              foreach ($qr_danhm as $rows) {
            ?>
            <li> <a <?=full_href($rows) ?>><i class="fa fa-angle-double-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> </li>
            <?php } ?>
          </ul>
        </div>
        <div class="check_id">
          <h3><?=$glo_lang['gia_tien'] ?></h3>
          <ul>
            <?php 
              $tkgia = LAY_tkgia();
                foreach ($tkgia as $rows) {
              ?>
              <label class="container"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>
                <input type="checkbox" class="tnn_pri" value="<?=$rows['id'] ?>">
                <span class="checkmark"></span> 
              </label>
              <?php } ?>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<script>
  $(".check_id input").click(function(){
    LOAD_sp_ajax(1, '');
  });

  function LOAD_sp_ajax(page,list_check){
    var js_search  = 0;
    if($(".js_search").length > 0) {
      js_search   = $(".js_search").val();
    }
    var js_key     = "";
    if($(".js_key").length > 0) {
      js_key   = $(".js_key").val();
    }
    var js_danhmuc = 0;
    if($(".js_danhmuc").length > 0) {
      js_danhmuc   = $(".js_danhmuc").val();
    }
    var is_sapxep = "";
    if($("#is_sapxep").length > 0) {
      is_sapxep = $("#is_sapxep").val();
    }
    var list_check = "";
    $(".check_id input.tnn_2").each(function(){
      if($(this).is(":checked")) {
        list_check += list_check == "" ? $(this).val() : "," + $(this).val();
      }
    });
    var tnn_pri_dm = "";
    $(".check_id input.tnn_pri_dm").each(function(){
      if($(this).is(":checked")) {
        tnn_pri_dm += tnn_pri_dm == "" ? $(this).val() : "," + $(this).val();
      }
    });
    var list_check_pri = "";
    $(".check_id input.tnn_pri").each(function(){
      if($(this).is(":checked")) {
        list_check_pri += list_check_pri == "" ? $(this).val() : "," + $(this).val();
      }
    });
    
    $(".right_conten_ajax").html('<div style="text-align: center;width: 100%; padding: 20px 0"><img src="images/loadernew.gif" alt="" style="margin: 0 auto; float: none; height: 80px;"></div>');
    $.ajax({
      type: "POST",
      url: full_url + "/ajax_timkiem/",
      data: {
          "th": $(".js_th").val(),
          "list_check": list_check,
          "is_sapxep": is_sapxep,
          "list_check_pri": list_check_pri,
          "tnn_pri_dm": tnn_pri_dm,
          "js_search": js_search,
          "js_key": js_key,
          "page": page,
          "cls_idprsp": $(".cls_idprsp").val(),
          "action_ajax": "ajax_timkiem"
      },
      success: function (data) {
        $(".right_conten_ajax").html(data);
        GOTO_sport('.right_conten_ajax')
      }
    });
  }

</script>