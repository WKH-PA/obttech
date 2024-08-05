<div class="footer wow fadeInUp">

  <div class="pagewrap">

    <div class="left_footer">

      <ul>
        <?php
          $noidung    = LAYTEXT_rieng(82);
        ?>
        <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
        <div class="n-foot">
            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
        </div>

      </ul>

    </div>

    <div class="right_footer">

      <ul>
          <?php
            $step       = 2;
            $sp_step    = LAY_step($step);
            $sp_baiviet = LAY_danhmuc($step, 10, "`id_parent` = 0");
          ?>
          <h3><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h3>
          <?php
            foreach ($sp_baiviet as $rows) {
          ?>
          <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
          <?php } ?>

        </ul>

      <ul>

        <?php
          $step       = 1;
          $sp_step    = LAY_step($step);
          $sp_baiviet = LAY_baiviet($step, 10, "`id_parent` = 0");
        ?>
        <h3><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h3>
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>



      </ul>

      <ul>

        <?php
            $step       = 5;
            $sp_step    = LAY_step($step);
            $sp_baiviet = LAY_danhmuc($step, 10, "`id_parent` = 0");
          ?>
          <h3><?=$sp_step[0]['tenbaiviet_'.$lang] ?></h3>
          <?php
            foreach ($sp_baiviet as $rows) {
          ?>
          <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
          <?php } ?>

      </ul>

      <div class="clr"></div>

    </div>

    <div class="clr"></div>

    <div class="bottom_ft">

      <p><?=$glo_lang['ban_quyen_name'] ?>
        <!-- |  <a href="http://conet.vn/" title="thiết kế website" target="_blank">Designed and developed by</a>  -->
        <!-- <a href="http://conet.vn/" target="_blank"> CONET.VN</a> -->
      </p>

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