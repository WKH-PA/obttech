
<div class="bg_pageload" style="background-image:url(<?=full_src($thongtin_step, '') ?>);"></div>
<div class="link_page">
  <div class="pagewrap">
    <ul>
      <h3><?=$kietxuat_name ?></h3>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><?=GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '<i class="fa fa-angle-right"></i>') ?></li>
    <div class="clr"></div>
    </ul>
  </div>
</div>

  <div class="page_conten_page wow fadeInUp">

  <div class="pagewrap">

    <div class="right_conten">

      <div class="title_news">

        <h2><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h2>
        <li><?=CONVER_thu(date("l", $arr_running['ngaydang']), $glo_lang) ?>, <?=date("H:i", $arr_running['ngaydang']) ?> <?=$glo_lang['date'] ?> <?=date("d/m/Y", $arr_running['ngaydang']) ?></li>

      </div>

      <div class="showText"><?=SHOW_text($arr_running['noidung_'.$lang]); ?><div class="clr"></div></div>

      <?php include _source."fb_sharelink.php"; ?>
      <div class="dv-fb_coment">
        <?php include _source."fb_coment.php"; ?>
      </div>

    </div>
    <div class="left_conten">

      <div class="box_left_id">

        <div class="titile_menu_left">

        <ul>

          <h3><?=$thongtin_step['tenbaiviet_'.$lang] ?></h3>

          </ul>

        </div>
        <div class="menu_left">

        <ul>
          <?php
            $danhmuc = LAY_danhmuc($slug_step,0,"`id_parent` = 0");
            foreach ($danhmuc as $rows) {
          ?>
          <li><a <?=full_href($rows) ?> ><i class="fa fa-angle-double-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
          <?php } ?>
        </ul>

      </div>

      </div>

      <div class="box_left_id">

      <div class="titile_menu_left">

      <ul>

        <h3><?=$glo_lang['xem_nhieu_nhat'] ?></h3>

        </ul>

      </div>
      <div class="new_right">
        <?php
          $baiviet = LAY_baiviet($slug_step,10,"","`soluotxem` DESC");
          foreach ($baiviet as $rows) {
        ?>
        <ul>

          <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a></li>

          <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a><span><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></span></h3>

          <div class="clr"></div>

        </ul>
        <?php } ?>

      </div>

      </div>

    </div>
    <div class="clr"></div>

    </div>

    <div class="clr"></div>

</div>

<div class="box_services_home_2">

  <div class="pagewrap">

    <div class="title_page">

      <ul>

        <h3><?=$glo_lang['bai_viet_lien_quan'] ?></h3>

      </ul>

    </div>

    <div class="new_id new_id_slider no_box">
      <!--  -->
      <?php $data = array("1","1","2","3","3","3") ?>
        <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
      <?php 
        foreach ($nd_kietxuat as $rows) {
      ?>
        <div class="item">
          <ul class="wow flipInY">
            <li>
              <a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"/></a>
            </li>
            <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <h2><i class="fa fa-calendar"></i><?=CONVER_thu(date("l", $rows['ngaydang']), $glo_lang) ?>, <?=date("d/m/Y", $rows['ngaydang']) ?></h2>
            <p><span class="lm_4"><?=SHOW_text(strip_tags($rows['mota_'.$lang])) ?></span></p>
            <h4><a <?=full_href($rows) ?>><?=$glo_lang['xem_chi_tiet'] ?><i class="fa fa-long-arrow-right"></i></a></h4>
          </ul>
        </div>
       <?php } ?>

      </div>
      <div class="clr"></div>
      <!--  -->
    </div>

  </div>

</div>

