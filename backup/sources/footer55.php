<?php
  $noidung    = LAYTEXT_rieng(82);
  $noidung_2  = LAYTEXT_rieng(84);
?>
<div  class="footer_top">
<div>
  <div class="pagewrap wow fadeInDown">
    <ul class="contact_footer">
  	 <h3><img src="<?=full_src($noidung, '') ?>" alt="<?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?>"></h3>
      <div class="n-foot">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
      </div>
    </ul>
    <div class="right-ft-a">
    <ul id="menu-footer-menu" class="menu">
      <h3><?=SHOW_text($noidung_2['tenbaiviet_'.$lang]) ?></h3>
      <div class="n-foot">
          <?=SHOW_text($noidung_2['noidung_'.$lang]) ?>
      </div>
    </ul>
  <div class="footer-r-a">
    <h3><?=$glo_lang['mang_xa_hoi'] ?></h3>
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
  <div class="pagewrap wow fadeInUp">
    <div class="box_menu">
  <div>
  <?php
    $thongtinchung = LAY_thuoctinhchung();
    if(count($thongtinchung)){
  ?>
  <ul class="menu">
    <?php foreach ($thongtinchung as $rows) { ?>
    <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
    <?php } ?>
  </ul>
<?php } ?>
  </div>
  </div>
  <div class="clr"></div>
    <p><?=$glo_lang['ban_quyen_name'] ?></p>
    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>

