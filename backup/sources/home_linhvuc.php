<div class="dv-slider no_box">
    <!--  -->
    <?php $data = array("1","1","2","2","3","3") ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
      <?php
        foreach ($sp_baiviet as $rows) {
      ?>
      <div class="item">
        <div class="banner_sp_home wow fadeInDown">
          <h4><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
          <div class="dv-nd-showtext">
            <?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
          <a <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?> <i class="fa fa-angle-double-right"></i></a>
        </div>
      </div>
      <?php } ?>
    </div>
    <div class="clr"></div>
    <!--  -->
  </div>