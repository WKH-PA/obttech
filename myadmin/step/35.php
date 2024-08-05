
<div class="nav-tabs-custom">
  <?php include _source."lang.php" ?>
  <div class="tab-content">
    <?php include "step_lang.php" ?>
  </div>
</div>



<div class="box p10">

  <div class="form-group">
    <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
    <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=@$seo_name ?>">
    <label class="noweight noweight-top checkbox-mini">
      <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
    </label>
  </div>
  <!-- <div class="form-group">
    <label>Kiểu hiển thị </label>
    <div>
      <?php for ($i=1; $i <= 6; $i++) {  ?>
      <span style="background: #dadada; padding: 0px 7px; display: inline-block; border-radius: 100px; margin: 0 3px 3px 0; font-size: 10px">Kiểu hiển thị <?=$i ?> <a data-tooltip='<img src="img/kieu_<?=$i ?>.png" style="width: 100%">'> </a></span>
      <?php } ?>
    </div>
    <select name="p2" class="form-control">
      <?php for ($i=1; $i <= 6; $i++) {  ?>
      <option value="<?=$i ?>" <?=@LAY_selected($i, $p2) ?>>Kiểu hiển thị <?=$i ?></option>
      <?php } ?>
    </select>
  </div> -->
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
