<div class="left_conten">
    <div class="box_left_id">
      <div class="titile_menu_left">
        <ul>
        <h3><?=$glo_lang['danh_muc_san_pham'] ?></h3>
        </ul>
    </div>
    <div class="menu_left">

    <ul>
        <?php
            $danhmuc = LAY_danhmuc(2,0,"`id_parent` = 0");
            foreach ($danhmuc as $rows) {
        ?>
        <li><a <?=full_href($rows) ?>><i class="fa fa-angle-right"></i><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> </li>
        <?php } ?>
    </ul>
</div>
</div>
<div class="box_left_id">
    <div class="titile_menu_left">
        <ul>
            <h3><?=$glo_lang['san_pham_ban_chay'] ?></h3>
        </ul>
    </div>     
    <div class="product_list product_list_3">
        <?php
            $sanpham = LAY_baiviet($slug_step,5,"`opt1` = 1");
            foreach ($sanpham as $rows) {
                // $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
        ?>
        <ul class="wow flipInY">
          <a <?=full_href($rows) ?>>
              <li><img src="<?=full_src($rows) ?>" alt="<?=SHOW_text($rows['tenbaiviet_'.$lang]) ?>"></li>
              <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
          </a>
          </ul>
        <?php } ?>
        </div>
    </div>
</div>