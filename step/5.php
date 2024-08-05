<?php 
  if(isset($_SESSION['id'])) {
    $info_acc     = DB_fet("*", "#_members", "`id` = '".$_SESSION['id']."' AND `phanquyen` = 0", "`id` DESC", 1);
    if(mysqli_num_rows($info_acc)) {
      $info_acc     = mysqli_fetch_assoc($info_acc);
      foreach ($info_acc as $key => $value) {
        ${$key} = $value;
      }
    }
  }
  // full_src($thongtin_step, '')
?>
<div class="banner-detail">
<img src="<?=full_src($thongtin_step, '') ?>" alt="<?=$thongtin_step['tenbaiviet_'.$lang] ?>">
<!--  <h3>--><?//=$thongtin_step['tenbaiviet_'.$lang] ?><!--</h3>-->
</div>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="contact-full">
  <div class="pagewrap">
    <div class="contact-maps">
      <li><?php if($thongtin_step['map_google'] != "" ){ ?>
      <iframe class="iframe_load" iframe-src="<?=$thongtin_step['map_google'] ?>" width="600" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
      <?php } ?></li>
    </div>
    <?php
      $baiviet = LAY_baiviet($thongtin_step['id'], 1);
      if(count($baiviet)){
    ?>
    <div class="left_contact">
      <?php 
        foreach ($baiviet as $rows) {
          // full_img($rows, '')
          // $rows['p1']
      ?>
      <h3 ><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
      <div class="showText showText_lienhe"><?=$rows['noidung_'.$lang] ?><div class="clr"></div></div>
      <?php } ?>
    </div>
      <?php } ?>
    <div class="clr"></div>
    <div class="dv-chinhanh" style="display: none">
      <h3><?=SHOW_text($glo_lang['he_thong_chi_nhanh']) ?></h3>
      <div class="dv-chinhanh-child">
        <?php
          $sp_tep     = LAY_step(7, 1);
          $sp_baiviet = LAY_baiviet(7, 3);
          $i = 0;
          foreach ($sp_baiviet as $rows) {
            $i++;
        ?>
        <ul class="contact_footer">
          <!-- // <h3><?=$i == 1 ? SHOW_text($sp_tep['tenbaiviet_'.$lang]) : "" ?></h3> -->
          <h4><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
          <div class="dv-foot showText showText_lienhe">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
        </ul>
        <?php } ?>
        <div class="clr"></div>
      </div>
    </div>
    <div class="right_contact">
      <h3><?=$glo_lang['form_lien_he'] ?></h3>
      <div class="contact">
        <?php include _source."lien_he_form.php"; ?>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>