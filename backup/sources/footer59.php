<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
    $hinhanh        = LAY_banner_new("`id_parent` = 30", 1);
?>
  <div class="newsletter_home" style="background: url(<?=full_src($hinhanh, '') ?>) center center fixed; background-size: cover; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; -ms-background-size: cover;">
    <div class="wow fadeInDown">
     <ul id="scroller">
      <?php 
        foreach ($banner_top as $rows) { 
      ?>
      <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
      <?php } ?>
    </ul> 
  </div>
</div>
<?php } ?>

<div  class="footer_top" style="<?=$motty != "" ? 'display:none' : ""; ?>">
  <div>
    <div class="pagewrap">
      <?php
        $noidung    = LAYTEXT_rieng(82);
        if(is_array($noidung)){
      ?>
     <ul class="contact_footer">
        <div class="n-foot">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
     </ul>
    <?php } ?>
     <ul id="menu-footer-menu" class="menu">
      <h3><?=SHOW_text($glo_lang['thong_tin']) ?></h3>
      <div class="footer-l">
        <?php
          $lienket = LAY_dulieusn();
          foreach ($lienket as $rows) {
        ?>
        <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </div>
    </ul>
    
    <div class="footer-r-a footer-ad-right">
      <h3><?=$glo_lang['xem_ban_do'] ?></h3>
      <iframe class="iframe_load" iframe-src="<?=$noidung['seo_name'] ?>" width="100%" height="150" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
    
    <div class="clr"></div>
    </div>
  </div>
</div>
 <div class="bottom_id_copyright">
    <div class="pagewrap">
      <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Designed and developed by</a> <a href="https://web30s.vn/" target="_blank">P.A VN</a></p>
      <p><?=$glo_lang['dang_online'] ?>: <?=NUMBER_fomat($online_tv) ?> | <?=$glo_lang['tong_view'] ?>: <?=NUMBER_fomat($thongke_tv) ?></p>
      <div class="clr"></div>
    </div>
  </div>
<div id="back-top"><a href="#top">TOP</a></div>