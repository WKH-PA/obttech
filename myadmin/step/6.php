
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
    <label class="mr-20">
      <input type="radio" name="showhi" class="minimal" value="1" <?=$id > 0 ? LAY_checked($showhi, 1) : 'checked' ?>> Hiện thị
    </label>
    <label>
      <input type="radio" name="showhi" class="minimal" value="2" <?=$id > 0 ? LAY_checked($showhi, 2) : '' ?>> Ẩn
    </label>
  </div>
</div>
