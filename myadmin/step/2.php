<div class="nav-tabs-custom">
  <?php include _source."lang.php" ?>
  <div class="tab-content">
    <?php include "step_lang.php" ?>
  </div>
</div>
<div class="box p10">
  <?php if(CHECK_key_setting("ma-san-pham")){ ?>
  <div class="form-group" >
    <label>Mã sản phẩm</label>
    <input type="text" class="form-control" name="p1" value="<?=!empty($p1) ? Show_text($p1) : "" ?>">
  </div>
  <?php } ?>
  <?php
    if(1){
  ?>
  <div class="form-group">
    <label>Giá bán</label>
    <input type="text" class="form-control cls_giatien_f" name="giatien" value="<?=!empty($giatien) ? $giatien : "0" ?>" onkeyup="SetCurrency(this)">
  </div> 
  <div class="form-group">
    <label>Giá so sánh: </label>
    <input type="text" class="form-control cls_giatien_khuyenmai_f" name="giakm" value="<?=!empty($giakm) ? $giakm : "0" ?>" onkeyup="SetCurrency(this)">
  </div> 
  <?php
    }
    include "step_giamuti.php"; 
  ?>
</div>
<!--  -->
<?php if(!empty($tinhnang_arr)){ ?>
<div class="box p10">
  <div class="form-group">
    <label>Nhãn</label>
    <div class="dv-lbtinhnang flex">
      <select name="num_3" id="id_parent" class="form-control">
        <option value="0">Chọn nhãn</option>
          <?php
          foreach ($tinhnang_arr as $val2) {
        ?>
        <option value="<?=$val2['id'] ?>" <?=LAY_selected($val2['id'], @$num_3) ?>><?=$val2['tenbaiviet_vi'] ?></option>
        <?php } ?>
      </select>
      <div class="clear"></div>
    </div>
  </div>
</div>
<?php } ?>
<!--  -->
<?php if(!empty($tinhnang_arr) && 0){ ?>
<div class="box p10">
  <!-- //tinh nang -->
   <?php 
    foreach ($tinhnang_arr as $value) {
      if($value['id_parent']    != 0 ) continue;
      if($value['loai_hienthi'] != 1 ) continue;
      if($value['noi_bat']      != 0 ) continue;
      // ko chon option na
      // continue;
      //
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
  <!-- tinh nang get price -->
  <!-- tinh nang get price end -->
</div>
<?php } ?>
<?php
  $step_tinhnang = false;
  // if($kieu_tn_muti && !empty($tinhnang_arr)){
  if($step_tinhnang && !empty($tinhnang_arr)){
?>
<div class="box p10">
  <!-- //tinh nang -->
   <?php 
    foreach ($tinhnang_arr as $value) {
      if($value['id_parent']    != 0 ) continue;
      if($value['loai_hienthi'] != 1 ) continue;
      if($value['noi_bat']      != 1 ) continue;
      // ko chon option na
      // continue;
      //
  ?>
  <div class="form-group">
    <label><?=$value['tenbaiviet_vi'] ?></label>
    <div class="dv-lbtinhnang flex dv-nd-tinhnang">
      <?php
        foreach ($tinhnang_arr as $val2) {  
          if($val2['id_parent'] != $value['id']) continue;
      ?>
      <label>
        <input type="checkbox" name="tinhnang_arr[]" value="<?=$value['id'].'_'.$val2['id'] ?>" <?=!empty($list_arr) && in_array($value['id'].'_'.$val2['id'], @$list_arr) ? 'checked="checked"' : "" ?>>
        <span><?=$val2['tenbaiviet_vi'] ?></span>
      </label>
      <?php } ?>
      <div class="clear"></div>
    </div>
  </div>
  <?php } ?>
  <!-- tinh nang get price -->
  <!-- tinh nang get price end -->
</div>
<?php } ?>
<?php //include "step_tinhnang_sp.php"; ?>
<div class="box p10">
  <!-- <div class="form-group">
    <label>Nhà cung cấp</label>
    <select name="p2" class="form-control ">
      <option value="0"> Chọn nhà cung cấp</option>
      <?php 
        $danhmuc = LAY_baiviet(12);
        foreach ($danhmuc as $rows) {
      ?>
      <option value="<?=$rows['id'] ?>" <?=$rows['id'] == @$p2 ? 'selected="selected"' : "" ?>><?=$rows['tenbaiviet_vi'] ?></option> 
      <?php } ?>
    </select>
  </div> -->

  <!-- end -->
  <?php if(in_array($step, $check_video)){ ?>
  <div class="form-group" >
    <label>Link Video <a data-tooltip="Nhập link Video Youtube. Ví dụ: https://www.youtube.com/watch?v=SQ-KWxC7Eoo&feature=emb_logo"> </a></label>
    <input type="text" class="form-control" name="link_video" value="<?=!empty($link_video) ? Show_text($link_video) : "" ?>">
  </div>
  
  <?php } ?>
  <div class="form-group">
    <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
    <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? Show_text($seo_name) : "" ?>">
    <label class="noweight noweight-top checkbox-mini">
      <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
    </label>
  </div>
  <?php include "step_hinhanh.php"; ?>
  
  <div class="form-group " >
    <label>Hiển thị</label>
    <?=LAY_chude_muti(@$id_parent_muti, $step , 'id_parent_muti[]', ' form-control SlectBoxNew', 0, 0, 'false', "multiple='multiple'") ?>
  </div>
  
  <div class="form-group">
    <label>Ngày đăng</label>
    <div class="input-group date">
      <div class="input-group-addon">
        <i class="fa fa-calendar"></i>
      </div>
      <input name="ngaydang" type="text" class="form-control pull-right" id="datepicker" value='<?=$ngaydang?>'>
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
