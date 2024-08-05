<div class="home-right-r">
  <div class="bh-right-ad" style="width: 100%;">
    <div class="box_right_pro_view" style="padding-bottom: 2px;
    margin-bottom: 25px;">
      <div class="title_right_pro_view" style="margin-bottom: 4px;"><?=$glo_lang['danh_muc'] ?></div>
      <ul>
        <?php if(empty($_SESSION['id'])){ ?>
          <li><a href="<?=$full_url."/dang-nhap" ?>" style="color: #c0212f;"><?=$glo_lang['dang_nhap'] ?></a></li>
          <li><a href="<?=$full_url."/dang-ky" ?>"><?=$glo_lang['dang_ky'] ?></a></li>
          <li><a href="<?=$full_url."/quen-mat-khau" ?>"><?=$glo_lang['quen_mat_khau'] ?></a></li>
        <?php }else{ ?>
          <li><a href="<?=$full_url."/tai-khoan" ?>"><?=$glo_lang['thong_tin_ca_nhan'] ?></a></li>
          <li><a href="<?=$full_url."/doi-mat-khau" ?>"><?=$glo_lang['doi_mat_khau'] ?></a></li>
          <li><a href="<?=$full_url."/lich-su-mua-hang" ?>"><?=$glo_lang['lich_su_mua_hang'] ?></a></li>
          <li><a href="<?=$full_url."/thoat" ?>"><?=$glo_lang['thoat'] ?></a></li>
        <?php } ?>
      </ul>
      </div>
    <div class="clear"></div>
    </div>
  <div class="clr"></div>
</div>