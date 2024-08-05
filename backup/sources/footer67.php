<div class="footer">
  <div class="pagewrap">
    <div class="middle-footer">
      <div class="pagewrap">
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
          <div class="text-subscribe">
            <div class="text">
              <h3><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>
            </div>
          </div>
          <div class="form_km">
            <ul class="no_box flex dt-sc-subscribe-frm">
              <form action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin" enctype="multipart/form-data">
                <div class="col-md row-frm" style="display: none">
                  <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control" placeholder="<?=$glo_lang['ho_va_ten'] ?>">
                </div>
                <div class="col-md row-frm"  style="display: none">
                  <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>">
                </div>
                <div class="col-md row-frm">
                  <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control" placeholder="<?=$glo_lang['nhap_dia_chi_email'] ?> *">
                </div>
                <h4><a onclick="DANGKY_email('<?=$full_url ?>')" class="cur"><?=$glo_lang['dang_ky_ngay'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a></h4>
                <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
                <div class="clr"></div>
              </form>
            </ul>
            </div>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="left_footer flex">
        <?php
          $noidung    = LAYTEXT_rieng(90);
          $noidung_2  = LAYTEXT_rieng(92);
        ?>
        <ul class="widget_getintuch">
          <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
          <div class="dv-foot flex">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
            <div class="clr"></div>
          </div>
        </ul>
        <ul>
          <h3><?=SHOW_text($noidung_2['tenbaiviet_'.$lang]) ?></h3>
          <div class="dv-foot">
            <?=SHOW_text($noidung_2['noidung_'.$lang]) ?>
          </div>
        </ul>
        <ul class="social">
         <h3><?=$glo_lang['mang_xa_hoi'] ?></h3>
         <?php include _source."mang_xa_hoi.php" ?>
         <div class="clr"></div>
       </ul>
     </div>
     <div class="clr"></div>
     <div class="bottom_ft">
      <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>