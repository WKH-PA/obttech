<div class="footer wow fadeInUp">
  <div class="pagewrap">
    <div class="left_footer">
      <?php
        $noidung    = LAYTEXT_rieng(82);
        $noidung_2    = LAYTEXT_rieng(87);
      ?>
      <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
      <ul>
        <h4><?=SHOW_text($noidung['p1_'.$lang]) ?></h4>
        <div class="n-foot">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>
      <ul>
  		  <h4><?=SHOW_text($noidung_2['tenbaiviet_'.$lang]) ?></h4>
        <div class="n-foot">
            <?=SHOW_text($noidung_2['noidung_'.$lang]) ?>
        </div>
      </ul>
    </div>
    <div class="right_footer">
      <div class="fb-page" data-href="<?=$glo_lang['fanpage'] ?>" data-tabs="timeline" data-width="300" data-height="220" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
        <blockquote cite="<?=$glo_lang['fanpage'] ?>" class="fb-xfbml-parse-ignore"><a href="<?=$glo_lang['fanpage'] ?>"><?=$thongtin['tenbaiviet_vi'] ?></a></blockquote>
      </div>
    </div>
    <div class="clr"></div>
    <div class="bottom_ft">
      <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
      <ul>
        <?php include _source."mang_xa_hoi.php" ?>
        <div class="clr"></div>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>
<?php include _source."hotline.php" ?>