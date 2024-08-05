<?php
  $noidung    = LAYTEXT_rieng(82);
?>
<div  class="footer_top">
  <div>
    <div class="pagewrap">
      <ul class="contact_footer">
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
        <div class="n-foot">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>
      <div class="right-ft-a">
       <iframe class="iframe_load" iframe-src="<?=$noidung['seo_name'] ?>" width="100%" height="322" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
     </div>
   </div>
 </div>
</div>
<div class="bottom_id_copyright">
  <div class="pagewrap">
    <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
    <p class="ft_right"><?=$glo_lang['dang_online'] ?>: <?=NUMBER_fomat($online_tv) ?> | <?=$glo_lang['tong_view'] ?>: <?=NUMBER_fomat($thongke_tv) ?></p>
    
    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>

