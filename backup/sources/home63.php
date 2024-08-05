<?php include _source."banner_top.php";?>
<?php
  $spstep = LAY_step(2, 1);
  $sp_baiviet = LAY_danhmuc(2, 0, "`id_parent` = 0");
  if(count($sp_baiviet)){
?>
<div class="box_home_top" id="box_home_top">
  <div class="home-top-md pagewrap">
    <h3 class="title_home wow flipInY"><a <?=full_href($spstep) ?>><?=SHOW_text($spstep['tenbaiviet_'.$lang]) ?></a></h3>
    <div class="col-md-12">
      <?php include _source."home_linhvuc.php" ?>
    </div>
  </div>
</div>
<?php } ?>

<?php
  $sp_step = LAY_step(9, 1);
  $sp_baiviet = LAY_baiviet(3, 20, "`opt1` = 0");
  if(count($sp_baiviet)){
?>
<div class="duan_box_home">
  <div class="pagewrap">
    <div class="title_page wow flipInY">
      <ul>
        <h4 class="title_home"><a <?=full_href($sp_step) ?>><?=SHOW_text($sp_step['tenbaiviet_'.$lang]) ?></a></h4>
      </ul>
    </div>

    <div class="left_tt_home left_tt_home_1 wow fadeInLeft flex">
      <?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i > 2) continue; ?>
      <ul>
        <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
        <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <h4><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?> | <?=$glo_lang['luot_xem'] ?>: <?=number_format($rows['soluotxem']) ?></h4>
        <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
      </ul>
      <?php } ?>
      <div class="clr"></div>
    </div>
    <div class="right_tt_home wow fadeInRight">
      <div class="marquee">
        <?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i < 2) continue; ?>
        <ul>
          <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> <span><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></span><span><?=$glo_lang['luot_xem'] ?>: <?=number_format($rows['soluotxem']) ?></span></h3>
          <div class="clr"></div>
        </ul>
        <?php } ?>
      </div>
    </div>
    <script>
      $(window).on('load', function() {
        setTimeout(function(){ $(".marquee").height($(".left_tt_home_1").height() - 30 ); }, 1000);
      });
      $(window).scroll(function(){
        $(".marquee").height($(".left_tt_home_1").height() - 30 );
      });
      $('.marquee').marquee({
        duration: 19000,
        gap: 0,
        delayBeforeStart: 0,
        direction: 'up',
        duplicated: true,
        pauseOnHover: true,
        startVisible: true
      });
    </script>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>

<?php
  $sp_step = LAY_step(4, 1);
  $sp_baiviet = LAY_baiviet(4, 20, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="tintuc_box_home">
  <div class="pagewrap">
    <div class="title_page wow flipInY">
      <ul>
        <h6 class="title_home"><a <?=full_href($sp_step) ?>><?=SHOW_text($sp_step['tenbaiviet_'.$lang]) ?></a></h6>
      </ul>
    </div>

    <div class="left_tt_home left_tt_home_2 wow fadeInLeft flex">
      <?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i > 2) continue; ?>
      <ul>
        <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>
        <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
        <h4><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></h4>
        <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
      </ul>
      <?php } ?>
      <div class="clr"></div>
    </div>
    <div class="right_tt_home wow fadeInRight">
      <div class="marquee1">
        <?php $i = 0; foreach ($sp_baiviet as $rows) { $i++; if($i < 2) continue; ?>
        <ul>
          <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a></li>
          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> <span><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></span></h3>
          <div class="clr"></div>
        </ul>
        <?php } ?>
      </div>
    </div>
    <script>
      $(window).on('load', function() {
        setTimeout(function(){ $(".marquee1").height($(".left_tt_home_2").height() - 30 ); }, 1000);
      });
      $(window).scroll(function(){
        $(".marquee1").height($(".left_tt_home_2").height() - 30 );
      });
      $('.marquee1').marquee({
        duration: 19000,
        gap: 0,
        delayBeforeStart: 0,
        direction: 'up',
        duplicated: true,
        pauseOnHover: true,
        startVisible: true
      });

    </script>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>


<?php
  $sp_baiviet = LAY_baiviet(3, 20, "`opt` = 1");
  if(count($sp_baiviet)){
?>
<div class="home-service">
  <div class="pagewrap">

    <div class="dv-slider no_box">
      <!--  -->
      <?php $data = array("1","2","3","3","4","4") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php
          foreach ($sp_baiviet as $rows) {
        ?>
        <div class="item">
          <div class="service-1 wow pulse">
            <a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/>
              <div class="absolute_text"><?=SHOW_text($rows['mota_'.$lang]) ?></div>
            </a>
            <p><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></p>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="clr"></div>
      <!--  -->
    </div>
  </div>
</div>
<?php } ?>

<?php
  $banner_top = LAY_banner_new("`id_parent` = 29");
  if(count($banner_top)) {
?>
<div class="home-khachhang pagewrap">
  <h5 class="title_home wow flipInY"><?=$glo_lang['doi_tac_khach_hang'] ?></h5>
  <div class="home-kh-a wow fadeInDown">
    <div class="dv-slider no_box">
    <!--  -->
    <?php $data = array("2","3","4","5","6","6") ?>
      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
      <?php 
        // $i = 0;
        foreach ($banner_top as $rows) { 
          // $i++;
          // if($i == 1) echo '<div class="item">';
      ?>
      <div class="item">
        <div class="i-con-kh">
          <a <?=full_href($rows) ?>>
            <img src="<?=full_src($rows, '') ?>">
          </a>
        </div>
      </div>
      <?php } // if($i == 2) { echo '</div>'; $i = 0;} } if($i == 1)  echo '</div>'; ?>

    </div>
    <div class="clr"></div>
    <!--  -->
    </div>
  </div>
  <div class="clr"></div>
</div>
<?php } ?>