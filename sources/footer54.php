<div  class="footer_top">
  <div class="pagewrap">
    <div class="flex footer_top_flex no_box">
      <?php
        $noidung    = LAYTEXT_rieng(82);
      ?>
      <ul class="contact_footer">
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
        <div class="n-foot">
          <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>
      </ul>
      <div class="right-ft-a">
        <ul id="menu-footer-menu" class="menu">
          <h3><?=$glo_lang['san_pham_moi'] ?></h3>
          <ul class="popular-product">
            <?php
                $step       = 2;
                $sp_baiviet = LAY_baiviet($step, 4, "`opt1` = 1");
                foreach ($sp_baiviet as $rows) {
              ?>
              <li><a  <?=full_href($rows) ?>><?=full_img($rows) ?><h6><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h6></a><div class="clr"></div></li>
            <?php } ?>
          </ul>
        </ul>
      </div>
      <div class="footer-r-a">
        <h3><?=$glo_lang['tin_tuc_noi_bat'] ?></h3>
        <?php
            $step       = 4;
            $sp_baiviet = LAY_baiviet($step, 4, "`opt1` = 1");
            foreach ($sp_baiviet as $rows) {
          ?>
          <p><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></p>
        <?php } ?>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="bottom_id_copyright">
  <div class="pagewrap">
    <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
    <div class="clr"></div>
  </div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>