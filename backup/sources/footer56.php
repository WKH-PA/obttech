<?php
  $noidung    = LAYTEXT_rieng(82);
?>
<div  class="footer_top">
<div>
  <div class="pagewrap">
    <ul class="contact_footer">
      <div class="n-foot">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
    </ul>
    <div class="right-ft-a">
        <div id="menu-footer-menu" class="menu">
          <h3><?=$glo_lang['san_pham_hot'] ?></h3>
          <ul class="popular-product flex no_box">
            <?php
              $sanpham = LAY_baiviet(2, 6,"`opt` = 1");
              foreach ($sanpham as $rows) {
            ?>
            <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
              <h6><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h6>
            </a></li>
            <?php } ?>
          </ul>
        </div>
        <div class="footer-r-a">
        <h3><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>
        <p><?=$glo_lang['test_dang_ky_nhan_ban_tin'] ?></p>
        <form action="" class="no_box dt-sc-subscribe-frm" method="post" name="dk_email_nhantin" id="dk_email_nhantin" enctype="multipart/form-data">
          <div class="col-md row-frm"style="display:none">
            <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="text-a-hoten" placeholder="<?=$glo_lang['ho_va_ten'] ?>" >
          </div>
          <div class="col-md row-frm" style="display:none">
            <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>" >
          </div>
          <div class="col-md row-frm">
            <input type="text" name="ip_sentmail" id="ip_sentmail" class="text-a-hoten" placeholder="<?=$glo_lang['email'] ?> *">
          </div>
          <a onclick="DANGKY_email('<?=$full_url ?>')" class="cur"><?=$glo_lang['dang_ky'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a>
          <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
          <div class="clr"></div>
          
        </form>
          <div class="clr"></div>
          <div class="column dt-sc-one-half ">
            <ul class="dt-sc-sociable">
              <?php include _source."mang_xa_hoi.php" ?>
            </ul>  
          </div>
           
        </div>

    </div>
        
    <div class="clr"></div>
  </div>
</div>
</div>
<div class="bottom_id_copyright">
  <div class="pagewrap">
    <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
    <h6><p><?=$glo_lang['dang_online'] ?>: <?=NUMBER_fomat($online_tv) ?> | <?=$glo_lang['tong_view'] ?>: <?=NUMBER_fomat($thongke_tv) ?></p></h6>

    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>

