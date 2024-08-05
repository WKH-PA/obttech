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
  $tenvideo = "";
  $id_video = "";
  foreach ($nd_kietxuat as $rows) {
    $tenvideo      =  $rows['tenbaiviet_'.$lang];
    $id_video      =  $rows['p1'];
    break;
  }
?>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?></li>
    </ul>
      <div class="clr"></div>
    </div>
  </div>
  <div class="page_conten_page pagewrap">
    <div class="tin_left">
      <?php
        $i = 0;
        foreach ($nd_kietxuat as $rows) {
          $i++;
          if($i != 1) continue;
      ?>
      <div class="new_top_id new_top_id_video">
        <div class="one_new_home">
          <iframe width="100%" height="350" src="https://www.youtube.com/embed/<?=GET_ID_youtube($rows['p1']) ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          <div class="clr"></div>
        </div>
        <div class="one_new_home_right">
          <div class="title_news">
            <h2><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h2>
            <li><i class="fa fa-calendar"></i> <?=date("d/m/Y",$rows['ngaydang']) ?></li>
            <div class="clr"></div>
          </div>
          <div class="showText">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
        </div>
        <div class="clr"></div>
      </div>
      <?php } ?>
      <div class="tt_page tt_page_video flex">
        <?php
          $i = 0;
          foreach ($nd_kietxuat as $rows) {
            $i++;
            if($i == 1) continue;
        ?>
        <div class="new_id_bs">
          <li><a class="cur"  onclick="LOAD_video_youtube('<?=GET_ID_youtube($rows['p1']) ?>')"><?=full_img($rows, "thumb_") ?></a></li>
          <ul>
            <h3><a onclick="LOAD_video_youtube('<?=GET_ID_youtube($rows['p1']) ?>')"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
          </ul>
          <div class="clr"></div>
        </div>
        <?php } ?>
      </div>
      <!--  -->
      <div class="nums no_box">
        <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
        <div class="clr"></div>
      </div>
      <!--  -->
    </div>
    <?php include _source."right_conten.php";?>
    <div class="clr"></div>
  </div>
  <div class="dv-idvideo-youtube-cont" onclick="close_video_tb()">
  <div class="dv-idvideo-youtube"><iframe id="player" allow="autoplay; encrypted-media" frameborder="0" allowfullscreen="" data-gtm-yt-inspected-1070012_61="true" data-gtm-yt-inspected-1070012_79="true"></iframe><a class="close_vdeo" onclick="close_video_tb()"></a></div>
</div>
<script>
  function close_video_tb(){
      $(".dv-idvideo-youtube iframe").attr("src","");
      $(".dv-idvideo-youtube").hide();
      $(".dv-idvideo-youtube-cont").removeClass('actii');
      $(".dv-idvideo-youtube iframe").attr("src","");
  }
  function LOAD_video_youtube(id) {
      if(id == "") {
        // alert(text);
        $(".dv-idvideo-youtube").hide();
        $(".dv-idvideo-youtube-cont").removeClass('actii');
      }
      else {
        $(".dv-idvideo-youtube iframe").attr("src","https://www.youtube.com/embed/"+id+"?autoplay=1&amp;enablejsapi=1&amp;rel=0&amp;ytp-pause-overlay=0&amp;v="+id);
        $(".dv-idvideo-youtube").show();
        $(".dv-idvideo-youtube-cont").addClass('actii');
      }
  }
</script>