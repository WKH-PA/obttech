<?php
  $noidung    = LAYTEXT_rieng(90);
?>
<div class="footer">
  <div class="pagewrap">
    <div class="left_footer flex">
      <ul>
        <h3><?=$glo_lang['ho_tro_khach_hang'] ?></h3>
        <ul class="menu flex">
          <?php
            $lienket = LAY_thuoctinhchung();
            foreach ($lienket as $rows) {
          ?>
          <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
          <?php } ?>
        </ul>
      </ul>
      <ul>
        <a href="<?=$full_url ?>"><?=full_img($noidung, '') ?></a>
        <div><h4><?=$glo_lang['slugan_1'] ?><br><?=$glo_lang['slugan_2'] ?></h4>
        <h5><img src="delete/No1.png"></h5></div>
        <div class="n-foot">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>
      <ul class="widget_getintuch">
        <h3><?=$glo_lang['lien_he'] ?></h3>
        <!-- <li><i class="fa fa-map-marker"></i><strong><?=$glo_lang['dia_chi'] ?></strong><?=$thongtin['diachi_'.$lang] ?></li> -->
        <?php
          $banner_top = LAY_banner_new("`id_parent` = 25");
          if(count($banner_top)){
            foreach ($banner_top as $rows) { 
        ?>
        <li>
          <?php if($rows['fontawesome'] != ""){ ?>
          <i class="<?=$rows['fontawesome'] ?>"></i>
          <?php } ?>
          <strong><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></strong><?=SHOW_text($rows['mota_'.$lang]) ?>
        </li>
        <?php }} ?>
        <li><i class="fa fa-phone"></i><strong><?=$glo_lang['so_dien_thoai'] ?></strong><a href="tel:<?=$thongtin['sodienthoai_vi'] ?>"><?=$thongtin['sodienthoai_vi'] ?></a></li>
        <li><i class="fa fa-envelope-o"></i><strong><?=$glo_lang['email'] ?></strong><a href="tel:<?=$thongtin['email_vi'] ?>"><?=$thongtin['email_vi'] ?></a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="bottom_ft">
  <div class="pagewrap">
    <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
    <ul class="socical">
      <?php include _source."mang_xa_hoi.php" ?>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>