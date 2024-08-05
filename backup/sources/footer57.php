<?php
  $sp_baiviet  = LAY_baiviet(8,20);
  if(count($sp_baiviet)){
?>
<div class="hotro pagewrap wow fadeInDown">
  <!--  -->
  <?php $data = array("2","2","3","4","5","6") ?>
    <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="0" is_dots="1" is_autoplay="1">
  <?php
    foreach ($sp_baiviet as $rows) {
  ?>
  <div class="item">
    <div class="hotro_main col-lg-3 col-md-3 col-sm-6 col-xs-12 box-prod">
      <div class="img-hotro">
        <a <?=full_href($rows) ?>><img src="<?=full_src($rows, '') ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></a>
      </div>
      <div class="info-hotro">
        <div class="ten-hotro">
        <a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <?php } ?>
  </div>
  <div class="clr"></div>
  <!--  -->
</div>
<?php } ?>
<div class="middle-footer">
<div class="pagewrap">
  <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
    <div class="text-subscribe">
      <i class="fa fa-envelope-o"></i>
      <div class="text">
        <h3><?=$glo_lang['dang_ky_nhan_ban_tin'] ?></h3>
        <p><?=$glo_lang['test_dang_ky_nhan_ban_tin'] ?></p>
      </div>
    </div>
    <div class="form_km no_box">
        <form class="dt-sc-subscribe-frm" action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin" >
          <div class="col-md-7 row-frm" style="display:none">
            <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control" placeholder="<?=$glo_lang['ho_va_ten'] ?>">
          </div>
          <div class="col-md-7 row-frm"  style="display:none">
            <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control" placeholder="<?=$glo_lang['so_dien_thoai'] ?>">
          </div>
          <div class="col-md-7 row-frm">
            <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control" placeholder="<?=$glo_lang['nhap_dia_chi_email'] ?> *">
          </div>
          <h2><a onclick="DANGKY_email('<?=$full_url ?>')" class="cur"><?=$glo_lang['dang_ky'] ?> <img src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a></h2>
          <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
          <div class="clr"></div>
        </form>

    </div>

  </div>
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
      <div class="column dt-sc-one-half ">
        <ul class="dt-sc-sociable">
          <?php include _source."mang_xa_hoi.php" ?>
        </ul>  
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div class="footer_top">
  <div>
    <?php
      $noidung    = LAYTEXT_rieng(82);
      // $sanpham_name    = LAY_step(2,1);
    ?>
    <div class="pagewrap flex">
     <ul class="contact_footer">
       <h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
       <div><?=SHOW_text($noidung['noidung_'.$lang]) ?></div>
     </ul>
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
    <ul id="menu-footer-menu" class="menu">
      <h3><?=SHOW_text($glo_lang['san_pham']) ?></h3>
      <div class="footer-l">
        <?php
          $sanpham = LAY_danhmuc(2, 10,"`id_parent` = 0");
          foreach ($sanpham as $rows) {
        ?>
        <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>
        </a></li>
        <?php } ?>
      </div>
    </ul>

    <div class="footer-r-a footer-ad-right">
      <h3><?=$glo_lang['xem_ban_do'] ?></h3>
        <iframe class="iframe_load" iframe-src="<?=$noidung['seo_name'] ?>" width="100%" height="320" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      </div>

    <div class="clr"></div>

  </div>
</div>
</div>
<div class="bottom_id_copyright">
<div class="pagewrap">
  <p><?=$glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>

  <div class="clr"></div>
</div>
</div>
<div id="back-top"><a href="#top">TOP</a></div>

<div class="dv-idvideo-youtube-cont" onclick="close_video_tb()">
  <div class="dv-idvideo-youtube"><iframe id="player" allow="autoplay; encrypted-media" frameborder="0" allowfullscreen="" data-gtm-yt-inspected-1070012_61="true" data-gtm-yt-inspected-1070012_79="true"></iframe><a class="close_vdeo" onclick="close_video_tb()"></a></div>
</div>
<script>
  function close_video_tb(){
      $(".dv-idvideo-youtube iframe").attr("src","");
      $(".dv-idvideo-youtube").hide();
      $(".dv-idvideo-youtube-cont").removeClass('actii');
      $(".dv-idvideo-youtube iframe").attr("src","");
  }
  function LOAD_video_youtube(id) {
      if(id == "") {
        $(".dv-idvideo-youtube").hide();
        $(".dv-idvideo-youtube-cont").removeClass('actii');
      }
      else {
        $(".dv-idvideo-youtube iframe").attr("src","https://www.youtube.com/embed/"+id+"?autoplay=1&amp;enablejsapi=1&amp;rel=0&amp;ytp-pause-overlay=0&amp;v="+id);
        $(".dv-idvideo-youtube").show();
        $(".dv-idvideo-youtube-cont").addClass('actii');
      }
  }
</script>