<?php
  $noidung    = LAYTEXT_rieng(89);
?>
<div class="footer">
  <div class="flex">
    <div class="right_footer">
      <iframe class="iframe_load" iframe-src="<?=$noidung['seo_name'] ?>" width="100%" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
    <div class="left_footer">
      <ul>
        <div class="ft_logo"><?=full_img($noidung, '') ?>
          <div class="slogan"><h4><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h4>
            <h3><?=SHOW_text($noidung['p1_'.$lang]) ?></h3>
          </div>
        </div>
        <div class="dv-nd">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>
    </div>
  </div>
  <div class="clr"></div>
  <div class="bottom_ft">
    <div class="pagewrap">
      <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
      <ul>
        <?php include _source."mang_xa_hoi.php" ?>
      </ul>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>