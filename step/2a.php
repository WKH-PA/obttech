<?php
$name_titile = DB_fet_rd("*", "#_danhmuc", "`step` = '" . $slug_step . "' AND `id` = '" . $arr_running['id_parent'] . "'", "`id` DESC", 1, "id");


if (empty($name_titile))
    $name_titile = $thongtin_step['tenbaiviet_' . $lang];
else
    $name_titile = $name_titile[$arr_running['id_parent']]['tenbaiviet_' . $lang];

$lay_all_kx = LAYDANHSACH_idkietxuat($arr_running['id_parent'], $slug_step);

$wh = "AND `id_parent` in (" . $lay_all_kx . ") AND `id` <>  '" . $arr_running['id'] . "'";
$numview = 9;
// $nd_kietxuat  = DB_fet(" * "," `#_baiviet` "," `showhi` =  1 AND `step` IN (".$slug_step.") $wh "," `catasort` DESC "," $numview","arr");
$nd_kietxuat = DB_fet_rd(" * ", " `#_baiviet` ", "  `step` IN (" . $slug_step . ") $wh ", " `catasort` DESC, `id` DESC ", $numview);
if (!count($nd_kietxuat)) {
    $nd_kietxuat = DB_fet_rd(" * ", " `#_baiviet` ", "  `step` IN (" . $slug_step . ")", " RAND() ", $numview);
}
$nd_kietxuat_goiy = DB_fet(" * ", " `#_baiviet` ", "  `step` IN (" . $slug_step . ") $wh ", " RAND()", $numview, "arr");

// $nd_total = DB_que("SELECT `id` FROM `#_baiviet` WHERE `showhi` =  1 AND `step` IN (".$slug_step.") $wh");
// $nd_total = mysqli_num_rows($nd_total);
$list_hinhcon = LAY_hinhanhcon($arr_running['id'], 50);
// $tinhnang_arr = DB_fet("*","`#_baiviet_tinhnang`","`showhi` = 1 AND `step` = '".$slug_step."' ","`catasort` ASC, `id` DESC","","arr", 1);
// full_src($thongtin_step, '')
// $tinhnang   = LAY_bv_tinhnang(2);
// $baiviet_ct = LAY_baiviet_chitiet($arr_running['id']);
// $tinhnang   = LAY_bv_gia(2);
$tinhnang_arr = LAY_bv_tinhnang($slug_step);
?>
<div class="banner-detail">
    <img src="<?= full_src($thongtin_step, '') ?>" alt="<?= $name_titile ?>">
<!--    <h3>--><?//= $name_titile ?><!--</h3>-->
</div>
<div class="link_title">
    <div class="pagewrap">
        <ul>
            <li><i class="fa fa-home"></i><a
                        href="<?= $full_url ?>"><?= $glo_lang['trang_chu'] ?></a><?= GET_bre($arr_running['id_parent'], $slug_step, $full_url, $lang, $thongtin_step, $slug_table, '/') ?>
            </li>
            <div class="clr"></div>
        </ul>
    </div>
</div>
<div class="c-tin-ad a-column-sp">
    <div class="product-view-ad right-new">
        <div class="pro-view-left">
            <div class="padding_pagewrap" style="padding: 0; background: #fff; box-shadow: none;">
                <div class="titile_view_pro">
                    <ul>
                        <h3><?= SHOW_text($arr_running['tenbaiviet_' . $lang]) ?></h3>
                    </ul>
                </div>
                <div class="hinhanh_view">
                    <div id="bridal_images"><a href='<?= full_src($arr_running,"") ?>' class='cloud-zoom' id='zoom1'
                                               rel="position: 'inside' , showTitle: false, adjustX:0, adjustY:0"><img
                                    src="<?= full_src($arr_running,"") ?>"></a></div>
                    <!--  -->
                    <?php if (count($list_hinhcon)) { ?>
                        <div class="dv_bridal_images_list">
                            <div class="dv-slider-nang no_box">
                                <?php $data = array("2", "3", "3", "3", "4", "4") ?>
                                <div class="owl-auto owl-carousel owl-theme flex" data0="<?= $data[0] ?>"
                                     data1="<?= $data[1] ?>" data2="<?= $data[2] ?>" data3="<?= $data[3] ?>"
                                     data4="<?= $data[4] ?>" data5="<?= $data[5] ?>" is_slidespeed="1000"
                                     is_navigation="1" is_dots="1" is_autoplay="1" is_lop="1">
                                    <!--<div class="item">
                                        <li><a data_ok='<?= full_src($arr_running,"") ?>' class='cur cloud-zoom-gallery'
                                               rel="useZoom: 'zoom1', smallImage: '<?= full_src($arr_running,"") ?>'"><img
                                                        src="<?= full_src($arr_running,"") ?>" style="width:100%"></a></li>
                                    </div>-->
                                    <?php
                                    $i = 1;
                                    foreach ($list_hinhcon as $rows) {
                                        $i++;
                                        ?>
                                        <div class="item">
                                            <li><a data_ok='<?= full_src($rows,"") ?>' class='cur cloud-zoom-gallery'
                                                   rel="useZoom: 'zoom1', smallImage: '<?= full_src($rows,"") ?>'"><img
                                                            src="<?= full_src($rows,"") ?>" style="width:100%"></a></li>
                                        </div>
                                    <?php } ?>
                                </div>
                                <div class="clr"></div>
                            </div>
                        </div>
                    <?php } ?>
                    <!--  -->
                    <script>
                        jQuery.browser = {};
                        (function () {
                            jQuery.browser.msie = false;
                            jQuery.browser.version = 0;
                            if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
                                jQuery.browser.msie = true;
                                jQuery.browser.version = RegExp.$1;
                            }
                        })();
                    </script>
                    <script type="text/javascript" src="js/cloud-zoom.1.0.2.min.js"></script>
                </div>
                <div class="fs-dtinfo">
                    <div class="price_pro">
                        <?= $arr_running['p1'] != "" ? "<b>" . $glo_lang['cart_ma_sp'] . ': ' . $arr_running['p1'] . "</b>" : "" ?>
                        <p><?= $glo_lang['tinh_trang'] ?>:
                            <span><?= $arr_running['opt'] != 1 ? $glo_lang['con_hang'] : $glo_lang['het_hang'] ?> </span>
                        </p>
                        <?php
                        $gia = GET_gia($arr_running['giatien'], $arr_running['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '', '');
                        ?>
                        <h4><?= $glo_lang['gia'] ?>: <?= $gia['text_gia'] ?> <?= $gia['text_km'] ?></h4>
                        <ul>
                            <div class="dv-mota-sp"><?= SHOW_text($arr_running['mota_' . $lang]) ?>
                                <div class="clr"></div>
                            </div>
                        </ul>
                    </div>
                    <div class="add_to_cart">
                        <?php
                        $lienhe = LAY_step(6, 1);
                        ?>
                        <h4><a <?= full_href($lienhe) ?>><i class="fa fa-cart-plus"></i><?= $glo_lang['mua_hang'] ?></a>
                        </h4>

                        <div class="dv-mxh-sp">
                            <span><?= $glo_lang['tu_van_mua_hang'] ?></span>
                            <?php
                            $banner_top = LAY_banner_new("`id_parent` = 30");
                            if (count($banner_top)) {
                                foreach ($banner_top as $rows) {
                                    ?>
                                    <a <?= full_href($rows) ?>>
                                        <?= full_img($rows, '') ?>
                                    </a>
                                <?php }
                            } ?>
                            <div class="clr"></div>
                            <!-- <span><?= $glo_lang['goi_de_dat_ngay'] ?></span> -->
                            <!-- <?= $glo_lang['hotline'] ?>: <a href="tel:<?= $thongtin['hotline_vi'] ?>"><?= $thongtin['hotline_vi'] ?></a> -->
                        </div>
                        <div class="clr"></div>
                    </div>
                    <?php include _source . "fb_sharelink.php"; ?>
                </div>
                <div class="clr"></div>
                <div class="detail-sp">
                    <h5><?= $glo_lang['chi_tiet_san_pham'] ?></h5>
                    <div class="showText">
                        <?= SHOW_text($arr_running['noidung_' . $lang]) ?>
                        <div class="clr"></div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clr"></div>
            <div class="nhacungcap_view home-product" style="background: #fff;">
                <div class="pagewrap" style="width: 100%">
                    <div class="panel-section-title">
                        <div class="stripe">
                            <h2><?= $glo_lang['san_pham_lien_quan'] ?></h2>
                        </div>
                    </div>
                    <div class="sp-list-f pro_home_id_slider pro_home_id">
                        <!--  -->
                        <?php $data = array("1", "2", "2", "3", "4", "4") ?>
                        <div class="owl-auto owl-carousel owl-theme flex" data0="<?= $data[0] ?>"
                             data1="<?= $data[1] ?>" data2="<?= $data[2] ?>" data3="<?= $data[3] ?>"
                             data4="<?= $data[4] ?>" data5="<?= $data[5] ?>" is_slidespeed="1000" is_navigation="1"
                             is_dots="1" is_autoplay="0">
                            <?php
                            foreach ($nd_kietxuat as $rows) {
                                // $gia = GET_gia($rows['giatien'], $rows['giakm'], $glo_lang['dvt'], $glo_lang['gia_lienhe'], "gia_ban", "gia_km", '','', $thongtin['is_giamuti'], $rows['id']);
                                ?>
                                <div class="item">
                                    <ul>
                                        <?php if ($rows['opt2'] == 1 && !empty($tinhnang_arr[$rows['num_3']])) { ?>
                                            <div class="discount-tag">
                                                <?= $tinhnang_arr[$rows['num_3']]['icon'] != "" ? full_img($tinhnang_arr[$rows['num_3']], '') : "" ?>
                                                <!-- <?= $tinhnang_arr[$rows['num_3']]['tenbaiviet_' . $lang] ?> -->
                                                <img src="">
                                            </div>
                                        <?php } ?>
                                        <a <?= full_href($rows) ?>>
                                            <li><img class="owl-lazy" data-src="<?= full_src($rows) ?>"
                                                     alt="<?= SHOW_text($rows['tenbaiviet_' . $lang]) ?>"></li>
                                            <h3><?= SHOW_text($rows['tenbaiviet_' . $lang]) ?></h3>
                                        </a>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="clr"></div>
                        <!--  -->
                    </div>
                </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="clr"></div>
    </div>
    <?php include _source . "left_conten.php"; ?>
    <div class="clr"></div>
</div>