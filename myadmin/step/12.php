
<div class="nav-tabs-custom">
  <?php include _source."lang.php" ?>
  <div class="tab-content">
    <?php include "step_lang.php" ?>
  </div>
</div>
<div class="box p10">
  <div class="form-group">
    <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
    <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? Show_text($seo_name) : "" ?>">
    <label class="noweight noweight-top checkbox-mini">
      <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
    </label>
  </div>
  <?php if(in_array($step, $check_video)){ ?>
  <div class="form-group" >
    <label>Link Video <a data-tooltip="Nhập link của Iframe Video. Ví dụ: https://www.youtube.com/embed/nBADFUDapmk, https://fast.wistia.net/embed/iframe/ahh2wpcw8i"> </a></label>
    <input type="text" class="form-control" name="link_video" value="<?=!empty($link_video) ? Show_text($link_video) : "" ?>">
  </div>
  <?php } ?>
  <div class="form-group">
    <label>Địa chỉ</label>
    <input type="text" class="form-control" name="thuoc_tinh_1_vi" value="<?=!empty($thuoc_tinh_1_vi) ? Show_text($thuoc_tinh_1_vi) : "" ?>" >
  </div>
  <div class="form-group">
    <label>Số điện thoại</label>
    <input type="text" class="form-control" name="thuoc_tinh_2_vi" value="<?=!empty($thuoc_tinh_2_vi) ? Show_text($thuoc_tinh_2_vi) : "" ?>" >
  </div>
  
  
  <div class="form-group" >
    <label>Toạ độ google map <a data-tooltip="Lấy toạ độ địa chỉ google map https://www.google.com/maps, ví dụ 10.778975834187621, 106.69013397968519"> </a></label>
    <input type="text" class="form-control" name="google_map" value="<?=!empty($google_map) ? Show_text($google_map) : "" ?>">
  </div>
  <div class="form-group" >
    <label>Tỉnh / Thành</label>
    <select name="num_3" id="" onchange="LOAD_tinhthanh(this, '#id_quanhuyen', 'Chọn Quận / Huyện')" class="form-control">
      <option value="0">Chọn Tỉnh / Thành</option>
      <?php
        $tinhthanh = LAY_khuvuc();
        foreach ($tinhthanh as $value) { 
          if($value['id_parent'] != 0) continue;
      ?>
      <option value="<?=$value['id']  ?>" <?=LAY_selected(@$num_3, $value['id']) ?>><?=$value['tenbaiviet_vi']  ?></option>
      <?php } ?>
    </select>
  </div>
  <div class="form-group" >
    <label>Quận / Huyện</label>
    <select name="num_4" id="id_quanhuyen" class="form-control">
      <option value="0">Chọn Quận / Huyện</option>
      <?php
        $tinhthanh = LAY_khuvuc();
        foreach ($tinhthanh as $value) { 
          if($value['id_parent'] != @$num_3) continue;
      ?>
      <option value="<?=$value['id']  ?>" <?=LAY_selected(@$num_4, $value['id']) ?>><?=$value['tenbaiviet_vi']  ?></option>
      <?php } ?>
    </select>
  </div>
  <?php include "step_hinhanh.php"; ?>

  <div class="form-group">
    <label>Ngày đăng</label>
    <div class="input-group date">
      <div class="input-group-addon">
        <i class="fa fa-calendar"></i>
      </div>
      <input name="ngaydang" type="text" class="form-control pull-right datepicker" id="datepicker" value='<?=$ngaydang?>'>
    </div>
  </div>

  <div class="form-group">
    <label>Số thứ tự</label>
    <input type="text" class="form-control" name="catasort" id="catasort" value="<?=SHOW_text($catasort)?>" onkeyup="SetCurrency(this)">
  </div>

  <div class="form-group">
    <label class="mr-20 checkbox-mini">
      <input type="checkbox" name="showhi" class="minimal" <?=isset($showhi) && $showhi == 0 ? '' : 'checked="checked"' ?>> Hiển thị
    </label>
  </div>
</div>