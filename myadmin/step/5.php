
<div class="nav-tabs-custom">
  <?php include _source."lang.php" ?>
  <div class="tab-content">
    <?php include "step_lang.php" ?>
  </div>
</div>
<div class="box p10">
  <?=admin_input_setting(72) ?>
  <?php if(in_array($step, $array_tn_option_p1)){ ?>
  <div class="form-group">
    <label>Icon</label>
    <input type="text" class="form-control icon_add" name="p1" value="<?=!empty($p1) ? Show_text($p1) : "" ?>">
    <div class="dv-cont-showicon">
      <label>
        <a onclick="$('.dv-show-icon').toggle()" ><i class="fa fa-plus "></i> Chọn icon</a>
        <i class="<?=!empty($p1) ? SHOW_text($p1) : ''?>" id="show_icon_fa" ></i>
      </label>
      <div class="dv-show-icon" >
        <?php $id_add = ".icon_add"; include _source."fa_assom.php"; ?>
      </div>
    </div>
  </div>
  <?php } ?>
  <div class="form-group" style="display: none">
    <input type="text" class="form-control" name="seo_name"  value="<?=!empty($seo_name) ? Show_text($seo_name) : md5(time()) ?>">
  </div>

  <?php include "step_hinhanh.php"; ?>

  <div class="form-group"  style="display: none">
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