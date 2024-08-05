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
  <div class="right-new">
  <div class="title_news">
      <h2><?=$name_titile ?></h2>
    </div>
    <div class="showText">
      <div class="right_conten_ad">
    <table class="tbl_down" cellpadding="0" cellspacing="0">
      <tbody>
        <tr class="title">
          <th width="10%"><?=$glo_lang['stt'] ?></th>
          <th><?=$glo_lang['ten_file'] ?></th>
          <th width="10%" class="text-center"><?=$glo_lang['tai_ve'] ?></th>
        </tr>
        <?php
        if($nd_total == 0){
          echo "<tr><td colspan='3'><div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div></td></tr>";
        }
        else{
          $i = 0;
          foreach ($nd_kietxuat as $rows) {
            $i++;
            // $icon = '<i class="fa fa-file-excel-o"></i>';
            // $link = "";
            // if($rows['dowload'] != ""){
            //   $link = $fullpath."/datafiles/files/".$rows['dowload'];
            //   $ex = explode(".",$rows['dowload']);
            //   $ex = end($ex);
            //   if($ex == "pdf") $icon = '<i class="fa fa-file-pdf-o"></i>';
            //   else if($ex == "doc" || $ex == "docx") $icon = '<i class="fa fa-file-word-o"></i>';
            // }

            $link                    = "";
            $target                  = "";

            if($rows['dowload_text'] != ""){
              $link                    = $rows['dowload_text'];
              $target                  = "target='_blank'";
              $ex                      = explode(".",$rows['dowload_text']);
              $ex                      = end($ex);
            }
            else if($rows['dowload'] != ""){
              $link                    = $fullpath."/datafiles/files/".$rows['dowload'];
              $target                  = "download";
              $ex                      = explode(".",$rows['dowload']);
              $ex                      = end($ex);
            }
      ?>
      <tr>
        <td class="text-center"><?=($pzer - 1) * $numview + $i ?></td>
        <td><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></td>
        <td class="text-center"><a  href="<?=$link  ?>" <?=$target ?>><?=$glo_lang['tai_ve'] ?></a></td>
      </tr>
      <?php }} ?>
      </tbody>
    </table>
    <div class="nums no_box">
      <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      <div class="clr"></div>
    </div>
  </div>
    </div>
  </div>
  <?php include _source."right_conten.php" ?>
  <div class="clr"></div>
</div>
