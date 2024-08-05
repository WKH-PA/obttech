<div class="left-danhmuc">
  <?php $danhmuc = LAY_danhmuc(2,0,"`id_parent` = 0"); if($slug_step != 1 && $slug_step != 5){ ?>
  <div class="search-product">
    <div class="title_right_pro_view"><?=$glo_lang['tim_kiem_nhanh'] ?></div>
    <div class="timkiem_top">
      <input class="input_search input_search_left" type="text" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>">
    </div>
    <select class="js_danhmuc_left">
      <option value="0"><?=$glo_lang['tat_ca_san_pham'] ?></option>
      <?php
        $sanpham_step = LAY_step(2, 1);
        
        foreach ($danhmuc as $rows) { 
      ?>
      <option value="<?=$rows['id'] ?>" <?=isset($_GET['p']) && is_numeric($_GET['p']) ? LAY_selected($_GET['p'], $rows['id']) : ""  ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></option>
      <?php } ?>
    </select>
    <select class="js_giasp_left">
      <option value="0"><?=$glo_lang['gia_san_pham'] ?></option>
      <?php
            $que_ryy = DB_que("SELECT * FROM `#_lien_ket_nhanh` WHERE  `showhi` = 1 ORDER BY `catasort` ASC");
            $que_ryy = DB_arr($que_ryy);
            foreach ($que_ryy as $rows) {
      ?>
      <option value="<?=$rows['id'] ?>" <?=isset($_GET['pri']) && is_numeric($_GET['pri']) ? LAY_selected($_GET['pri'], $rows['id']) : ""  ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></option>
      <?php } ?>
    </select>
    <div class="custom-select custom-select-lastchild">
      <p><a class="cur" onclick="right_timsp('<?=$full_url."/".$sanpham_step['seo_name']."/" ?>')"><?=$glo_lang['tim_san_pham'] ?></a></p>
      <script>
        function right_timsp(url){
            var key             = $(".input_search_left").val().trim().replace(/ /g, "+");
            var js_danhmuc_left = $(".js_danhmuc_left").val();
            var js_giasp_left   = $(".js_giasp_left").val();
            window.location.href = url + "?key="+key+"&pri="+js_giasp_left+"&p="+js_danhmuc_left;
        } 
      </script>
    </div>
    <div class="clr"></div>
  </div>
<?php } ?>
    <?php
    
    if(count($danhmuc)) {
    ?>
    <div class="bh-right-ad">
    <div class="box_right_pro_view">
      <div class="title_right_pro_view"><?=$glo_lang['danh_muc'] ?></div>
      <ul>
        <?php foreach ($danhmuc as $rows) { ?>
        <li><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="clear"></div>
    </div>
    <?php } ?>
    <?php
      $banner_top = LAY_banner_new("`id_parent` = 31");
      if(count($banner_top)){
        $data = array("1","1","1","1","1","1")
    ?>
    <div class="multiple-items">
    <!--  -->
    <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
        <?php 
          foreach ($banner_top as $rows) { 
        ?>
        <div class="item">
            <div class="img-qc">
            <?php if($rows['seo_name'] != "") { ?><a <?=full_href($rows) ?>><?php } ?>
            <img class="owl-lazy" data-src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>">
            <?php if($rows['seo_name'] != "") { ?></a><?php } ?>
            </div>
        </div>
        <?php } ?>
    <!--  -->
    </div>
    <div class="clr"></div>
    </div>
    <?php } ?>
    <?php
        $baiviet_step = LAY_step(3,1);
        $baiviet      = LAY_baiviet(3,4);
    ?>
  <div class="bh-right-ad">
    <div class="box_right_pro_view pro_view_sp">
      <div class="title_right_pro_view"><?=$glo_lang['du_an_moi'] ?></div>
      <div class="new_right">
        <?php foreach ($baiviet as $rows) { ?>
          <ul>
            <li><a <?=full_href($rows) ?>><?=full_img($rows) ?></a></li>
            <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h3>
            <div class="clr"></div>
          </ul>
        <?php } ?>
        <div class="clr"></div>
      </div>
      <div class="clear"></div>
      <p><a <?=full_href($baiviet_step) ?>><?=$glo_lang['xem_tat_ca'] ?> »</a></p>
    </div>
    <div class="clear"></div>
  </div>
</div>
