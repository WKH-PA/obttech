<?php
  $noidung    = LAYTEXT_rieng(89);
?>
<div class="dv-footer">
  <div class="pagewrap">
    <div class="dv-footer-1">
      <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      <div class="clr"></div>
    </div>
    <ul class="dv-footer-2">
      <h3 class="h3-footer"><?=$glo_lang['lien_ket'] ?></h3>
      <div class="flex">
        <?php
          $lienket = LAY_dulieusn();
          foreach ($lienket as $rows) {
        ?>
        <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </div>
    </ul>
    <div class="dv-dangky-nhan-tin">
        <h3 class="h3-footer"><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>
        <p><?=$glo_lang['test_dang_ky_nhan_ban_tin'] ?></p>
        <form action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin" enctype="multipart/form-data">
          <div class="dv-form">
            <div class="col-md row-frm" style="display: none">
              <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control" placeholder="<?=$glo_lang['ho_va_ten'] ?>">
            </div>
            <div class="col-md row-frm"  style="display: none">
              <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>">
            </div>
            <div class="col-md row-frm">
              <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control" placeholder="<?=$glo_lang['nhap_dia_chi_email'] ?> *">
            </div>
            <a onclick="DANGKY_email('<?=$full_url ?>')" class="cur btn-nut-main"><?=$glo_lang['dang_ky_ngay'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a>
            <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
            <div class="clr"></div>
          </div>
        </form>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="bottom_id_copyright">
  <div class="pagewrap">
    <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Designed and developed by</a> <a href="https://web30s.vn/" target="_blank">P.A Vietnam</a></p>
    <!-- <p class="ft_right"><?=$glo_lang['dang_online'] ?>: <?=NUMBER_fomat($online_tv) ?> | <?=$glo_lang['tong_view'] ?>: <?=NUMBER_fomat($thongke_tv) ?></p> -->
    <ul class="social">
      <?php include _source."mang_xa_hoi.php" ?>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>