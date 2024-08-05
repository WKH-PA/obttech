<div class="middle-footer">
    <div class="pagewrap">
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="text-subscribe">
                <i class="fa fa-envelope-o"></i>
                <div class="text">
                    <h3>
                        <?= $glo_lang['dang_ky_nhan_ban_tin'] ?>
                    </h3>
                    <p>
                        <?= $glo_lang['test_dang_ky_nhan_ban_tin'] ?>
                    </p>
                </div>
            </div>
            <div class="form_km">
                <form action="" method="post" name="dk_email_nhantin" id="dk_email_nhantin"
                      enctype="multipart/form-data">
                    <div class="col-md row-frm" style="display: none">
                        <input type="text" name="ip_sentmail_name" id="ip_sentmail_name" class="form-control"
                               placeholder="<?= $glo_lang['ho_va_ten'] ?>">
                    </div>
                    <div class="col-md row-frm" style="display: none">
                        <input type="text" name="ip_sentmail_phone" id="ip_sentmail_phone" class="form-control"
                               placeholder="<?= $glo_lang['so_dien_thoai'] ?>">
                    </div>
                    <!-- <div class="col-md row-frm"> -->
                    <input type="text" name="ip_sentmail" id="ip_sentmail" class="form-control"
                           placeholder="<?= $glo_lang['nhap_email_cua_ban'] ?> *">
                    <!-- </div> -->
                    <!-- <h4> -->
                    <a onclick="DANGKY_email('<?= $full_url ?>')" class="cur"><?= $glo_lang['dang_ky_ngay'] ?> <img
                                src="images/loading2.gif" class="ajax_img_loading ajax_img_loading_mail"></a>
                    <!-- </h4> -->
                    <input name="capcha_hd" type="hidden" id="capcha_hd" value="">
                    <div class="clr"></div>
                </form>
                <div class="clr"></div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="column dt-sc-one-half ">
                <ul class="dt-sc-sociable">
                    <?php include _source . "mang_xa_hoi.php" ?>
                </ul>
            </div>
        </div>
        <div class="clr"></div>
    </div>
</div>
<?php
$noidung = LAYTEXT_rieng(93);
?>
<div class="footer_top">
    <div class="pagewrap">
        <div class="ft-top flex">
            <ul class="contact_footer">
                <h3><?= SHOW_text($noidung['tenbaiviet_' . $lang]) ?></h3>
                <div class="dv-foot">
                    <?= SHOW_text($noidung['noidung_' . $lang]) ?>
                </div>
            </ul>
            <div class="dv-contact_footer">
                <h3><?= SHOW_text($glo_lang['he_thong_chi_nhanh']) ?></h3>
                <div class="dv-contact_footer-child">
                    <?php
                    $sp_tep = LAY_step(7, 1);
                    $sp_baiviet = LAY_baiviet(7, 4);
                    $i = 0;
                    foreach ($sp_baiviet as $rows) {
                        $i++;
                        ?>
                        <ul class="contact_footer">
                            <!-- // <h3><?= $i == 1 ? SHOW_text($sp_tep['tenbaiviet_' . $lang]) : "" ?></h3> -->
                            <h4><?= SHOW_text($rows['tenbaiviet_' . $lang]) ?></h4>
                            <div class="dv-foot">
                                <?= SHOW_text($rows['noidung_' . $lang]) ?>
                            </div>
                        </ul>
                    <?php } ?>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="clr"></div>
    </div>
</div>

<div class="bottom_id_copyright">
    <div class="pagewrap">
        <p><?= $glo_lang['ban_quyen_name'] ?> | <a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết
                kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>

        <div class="clr"></div>
    </div>
</div>
<div id="back-top"><a href="#top"><i class="fa fa-arrow-up"></i></a></div>
<?php include _source."hotline.php";?>
