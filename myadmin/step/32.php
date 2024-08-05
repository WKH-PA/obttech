
<div class="nav-tabs-custom">
  <?php include _source."lang.php" ?>
  <div class="tab-content">
    <?php include "step_lang.php" ?>
  </div>
</div>
<div class="box p10" >
  <!-- //tinh nang -->
   <?php 
    foreach ($tinhnang_arr as $value) {
      if($value['id_parent']    != 0 ) continue;
      if($value['loai_hienthi'] != 1 ) continue;
      // ko chon option na

  ?>
  <div class="form-group">
    <label><?=$value['tenbaiviet_vi'] ?></label>
    <div class="dv-lbtinhnang flex">
      <select name="tinhnang_arr[]" id="id_parent" class="form-control">
        <option value="">Chọn <?=$value['tenbaiviet_vi'] ?></option>
          <?php
          foreach ($tinhnang_arr as $val2) {  
            if($val2['id_parent'] != $value['id']) continue;
        ?>
        <option value="<?=$value['id'].'_'.$val2['id'] ?>" <?=!empty($list_arr) && in_array($value['id'].'_'.$val2['id'], @$list_arr) ? 'selected="selected"' : "" ?>><?=$val2['tenbaiviet_vi'] ?></option>
        <?php } ?>
      </select>
      <div class="clear"></div>
    </div>
  </div>
  <?php } ?>
</div>
<div class="box p10">
  <!-- <div class="form-group" >
    <label>MS</label>
    <input type="text" class="form-control" name="p1" value="<?=!empty($p1) ? Show_text($p1) : "" ?>">
  </div> -->
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
  <?php include "step_hinhanh.php"; ?>

  <!-- <div class="form-group">
    <label>Ngày Ban Hành</label>
    <div class="input-group date">
      <div class="input-group-addon">
        <i class="fa fa-calendar"></i>
      </div>
      <input name="capnhat" type="text" class="form-control pull-right datepicker" value='<?=$capnhat?>'>
    </div>
  </div> -->
  <div class="form-group">
    <label>Ngày đăng</label>
    <div class="input-group date">
      <div class="input-group-addon">
        <i class="fa fa-calendar"></i>
      </div>
      <input name="ngaydang" type="text" class="form-control pull-right datepicker" value='<?=$ngaydang?>'>
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