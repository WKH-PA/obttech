<?php
  $table = '#_danhmuc';
  $id    = isset($_GET['edit']) && is_numeric($_GET['edit']) ? SHOW_text($_GET['edit']) : 0;
  $name_title    = $step == 2 ? "Danh sách chủ đề" : "Danh sách chủ đề";
  $name_chude    = $step == 2 ? "chủ đề" : "chủ đề";
  
  if($_SERVER['REQUEST_METHOD']=='POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }
      $catasort           = str_replace(".", "", $catasort);
      $seo_title_vi       = @LAY_uutien($seo_title_vi, $tenbaiviet_vi);
      $seo_title_en       = @LAY_uutien($seo_title_en, $tenbaiviet_en);
      $seo_title_cn       = @LAY_uutien($seo_title_cn, $tenbaiviet_cn);
      $seo_description_vi = @LAY_uutien($seo_description_vi, $tenbaiviet_vi);
      $seo_description_en = @LAY_uutien($seo_description_en, $tenbaiviet_en);
      $seo_description_cn = @LAY_uutien($seo_description_cn, $tenbaiviet_cn);
      $seo_keywords_vi    = @LAY_uutien($seo_keywords_vi, $tenbaiviet_vi);
      $seo_keywords_en    = @LAY_uutien($seo_keywords_en, $tenbaiviet_en);
      $seo_keywords_cn    = @LAY_uutien($seo_keywords_cn, $tenbaiviet_cn);
  
      $id_parent_muti          = "";
      if(isset($_POST['id_parent_muti'])) {
          foreach ($_POST['id_parent_muti'] as $val) {
              $id_parent_muti .= $val.",";
          }
          $id_parent_muti      = trim($id_parent_muti,",");
      }
    }

  if(!empty($_POST))
    {
      $seo_name                     = LAY_uutien($seo_name, $tenbaiviet_vi);
      $hinhanh                      = UPLOAD_image("icon", "../".$duongdantin."/", time());
      $icon_hover                   = UPLOAD_image("icon_hover", "../".$duongdantin."/", time());

      $data             = array();
      foreach ($arr_list_lang as $key => $vl) {
        $data['p1_'.$key]              = @${"p1_".$key};
        $data['mota_'.$key]            = @${"mota_".$key};
        $data['noidung_'.$key]         = @${"noidung_".$key};
        $data['tenbaiviet_'.$key]      = @${"tenbaiviet_".$key};
        $data['seo_title_'.$key]       = @${"seo_title_".$key};
        $data['seo_description_'.$key] = @${"seo_description_".$key};
        $data['seo_keywords_'.$key]    = @${"seo_keywords_".$key};
        // $data['tags_'.$key]            = @${"tags_".$key};

      }

      $data['ngaydang']             = time();
      $data['duongdantin']          = $duongdantin;
      $data['nhom_sp']              = is_numeric(@$nhom_sp) ? $nhom_sp : 0;


      $data['id_step']              = @is_numeric($id_step) ? $id_step : 0;
      $data['step']                 = @is_numeric($step) ? $step : 0;
      $data['catasort']             = @is_numeric($catasort) ? $catasort : 0;
      $data['id_parent']            = @is_numeric($id_parent) ? $id_parent : 0;
      $data['id_parent_muti']       = @$id_parent_muti;

      if($id > 0){
        $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$_GET['edit']."' LIMIT 1");
        $sql_thongtin = DB_arr($sql_thongtin, 1);
      }

      if($hinhanh != false)
        {
          $data['icon']     = $hinhanh;
          add_img_admin($thongtin_step['opt1'], @$_REQUEST['anh_sp'], $id, @$sql_thongtin, $duongdantin, $hinhanh, 'icon');
         
        }

      if($icon_hover != false)
        {
          $data['icon_hover']     = $icon_hover;
          add_img_admin($thongtin_step['opt1'], @$_REQUEST['anh_sp'], $id, @$sql_thongtin, $duongdantin, $hinhanh, 'icon_hover');
        }

   

      if($id == 0){
        $id                           = ACTION_db($data, $table , 'add',NULL,NULL);
        
        $_SESSION['show_message_on'] =  "Thêm <?=$name_chude ?> thành công!";
        THEM_seoname($id, $seo_name, $table, $step, "0");
      }else{
        ACTION_db($data, $table, 'update', NULL, "`id` = ".$id);
        
        $_SESSION['show_message_on'] =  "Cập nhật <?=$name_chude ?> thành công!";
        THEM_seoname($id, $seo_name, $table, $step, "1");
      }
        LOCATION_js($url_page."&step=".@$step."&id_step=".@$id_step."&edit=".$id);
        exit();
    }
 
    
  if($id > 0)
    {
      $sql_se             = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
      $sql_se             = DB_arr($sql_se, 1);
      foreach ($sql_se as $key => $value) {
        ${$key} = SHOW_text($value);
      }
      $catasort           = number_format($catasort,0,',','.');
      if ($icon != '') {
        $full_icon  = $fullpath."/".$duongdantin."/".$icon;
      }
      if ($icon_hover != '') {
          $full_icon_hover    = $fullpath."/".$duongdantin."/".$icon_hover;
      }
    }
    else 
    {
      $catasort   = layCatasort($table, '`step` = '.SHOW_text($step));
      $catasort   = number_format(SHOW_text($catasort),0,',','.');
      $id_parent  = 0;
      $edit       = 0;
    }
  

  
?>

<section class="content-header">
  <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE] </a> <?php } ?><?=$name_title ?></h1> 
  <ol class="breadcrumb">
      <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
      <li class="active">Quản lý <?=$name_chude ?></li>
  </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <input type="hidden" name="anh_sp" value="<?=!empty($thongtin_step['size_img_dm']) && $thongtin_step['size_img_dm'] != '' ? $thongtin_step['size_img_dm'] : '' ?>">

  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
            <h2 class="h2_title">
                <i class="fa fa-pencil-square-o"></i><?=GETNAME_step($step)?> > <?=$id > 0 ? 'Sửa' : 'Thêm' ?> <?=$name_chude ?>
            </h2>
            <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?=$url_page ?>&them-moi=true&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                <a href="<?=$url_page ?>&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
            </h3>
          </div>
          <div class="nav-tabs-custom">
            <?php include _source."lang.php" ?>
            <div class="tab-content">
              <?php
                $tabs = 0;
                foreach ($arr_list_lang as $key => $value) {
                  $tabs++;
              ?>
              <div class="tab-pane <?=$tabs == 1 ? "active" : "" ?>" id="tab_<?=$tabs ?>">
                <div class="form-group">
                  <label>Tên <?=$name_chude ?> (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty(${"tenbaiviet_".$key}) ? SHOW_text(${"tenbaiviet_".$key}) : ''?>" name="tenbaiviet_<?=$key ?>" id="tenbaiviet_<?=$key ?>">
                </div>
                <!-- <div class="form-group">
                  <label>Tên hiển thị (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty($p1_vi) ? SHOW_text($p1_vi) : ''?>" name="p1_vi" id="p1_vi">
                </div> -->
                <?php if(in_array($step, $st_danhmuc_mt)){ ?>
                <div class="form-group">
                  <label>Mô tả (<?=$value ?>)</label>
                  <textarea id="mota_<?=$key ?>" name="mota_<?=$key ?>" class="paEditor" ><?=!empty(${"mota_".$key}) ? SHOW_text(${"mota_".$key}) : ''?></textarea>
                </div>
                <?php } ?>

    
                <?php if($step == 0){ ?>
                <div class="form-group">
                  <label>Mô tả 2 (<?=$value ?>)</label>
                  <textarea id="tags_<?=$key ?>" name="tags_<?=$key ?>" class="paEditor"><?=!empty(${"tags_".$key}) ? SHOW_text(${"tags_".$key}) : ''?></textarea>
                </div>
                <?php } ?>

                <?php if(in_array($step, $st_danhmuc_nd)){ ?>
                <div class="form-group">
                  <label>Nội dung (<?=$value ?>)</label>
                  <textarea id="noidung_<?=$key ?>" name="noidung_<?=$key ?>" class="paEditor" rows="10" cols="80"><?=!empty(${"noidung_".$key}) ? SHOW_text(${"noidung_".$key}) : ''?></textarea>
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Seo Title (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_title_<?=$key ?>" value="<?=!empty(${"seo_title_".$key}) ? Show_text(${"seo_title_".$key}) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_description_<?=$key ?>" value="<?=!empty(${"seo_description_".$key}) ? Show_text(${"seo_description_".$key}) : "" ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_keywords_<?=$key ?>" value="<?=!empty(${"seo_keywords_".$key}) ? Show_text(${"seo_keywords_".$key}) : "" ?>">
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10">
          <div class="form-group">
            <label>Nằm trong</label>
            <?=LAY_chude($id_parent, $step, 'id_parent', 'form-control SlectBox', 0, $id_step, $id , 'true', 0) ?>
          </div>
          <div class="form-group">
            <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
            <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? Show_text($seo_name) : "" ?>">
            <label class="noweight noweight-top checkbox-mini">
              <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
            </label>
          </div>

          <?php if(in_array($step, $check_anh_dm)){ ?>
          <div class="form-group">
            <label for="exampleInputFile2">Ảnh đại diện <?=(!empty($thongtin_step['size_img_dm']) && $thongtin_step['size_img_dm'] != '' ? "(".str_replace("x", "px x ", $thongtin_step['size_img_dm'])."px)" : '300x300') ?></label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon" id="input_icon" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','input_icon');">
                <img src="<?=@$full_icon  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon) && $full_icon != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
              </div>
            </div>
          </div>
          <?php } ?>
          <?php if(in_array($step, $check_anh_dm_hv)){ ?>
          <div class="form-group">
            <label for="exampleInputFile2">Ảnh thay đổi <?=(!empty($thongtin_step['size_img_dm']) && $thongtin_step['size_img_dm'] != '' ? "(".str_replace("x", "px x ", $thongtin_step['size_img_dm'])."px)" : '300x300') ?></label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon_hover" id="input_icon_hv" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon_hv','input_icon_hv');">
                <img src="<?=@$full_icon_hover  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon_hover) && $full_icon_hover != "") echo "display: block"; else echo "display: none" ?>" id="img_icon_hv">
              </div>
            </div>
          </div>
          <?php } ?>

          
          <?php
            if($step == 1){
          ?>
          <div class="form-group " >
            <label>Kiểu Hiển thị </label>
            <select name="nhom_sp" class=" form-control " >
              <option value="0" <?=LAY_selected(@$nhom_sp, 0) ?>>Hiển thị 1</option>
              <option value="1" <?=LAY_selected(@$nhom_sp, 1) ?>>Hiển thị 2</option>
              <option value="2" <?=LAY_selected(@$nhom_sp, 2) ?>>Ban lãnh đạo</option>
            </select>
          </div>
          <?php } ?>
          <?php
            if($step == 222){
              $bvtinhnang = LAY_bv_tinhnang($step);
              $id_parent_muti = explode(",", @$id_parent_muti);
          ?>
          <div class="form-group " >
            <label>Kiểu Hiển thị </label>
            <select name="id_parent_muti[]" class=" form-control SlectBoxNew" multiple='multiple'>
              <?php 
                foreach ($bvtinhnang as $tn) {
                  if($tn['id_parent'] != 0) continue;
              ?>
              <option value="<?=$tn['id'] ?>"  <?=in_array($tn['id'], $id_parent_muti) ? 'selected="selected"' : "" ?> ><?=$tn['tenbaiviet_vi'] ?></option>
              <?php 
                foreach ($bvtinhnang as $tn2) {
                  if($tn2['id_parent'] != $tn['id']) continue;
              ?>
              <!-- <option value="<?=$tn2['id'] ?>"  <?=in_array($tn2['id'], $id_parent_muti) ? 'selected="selected"' : "" ?> ><?=$tn2['tenbaiviet_vi'] ?></option> -->
              <?php }} ?>
            </select>  
          </div>
          <?php } ?>
          <div class="form-group">
            <label>Số thứ tự</label>
            <input type="text" class="form-control" name="catasort" id="catasort" value="<?=SHOW_text($catasort)?>" onkeyup="SetCurrency(this)">
          </div>

          <div class="form-group">
            <label class="mr-20">
              <input type="radio" name="showhi" class="minimal" value="1" <?=(isset($_GET['edit'])) ? LAY_checked($showhi, 1) : 'checked' ?>> Hiện thị
            </label>
            <label>
              <input type="radio" name="showhi" class="minimal" value="2" <?=(isset($_GET['edit'])) ? LAY_checked($showhi, 2) : '' ?>> Ẩn
            </label>
          </div>
        </div>
      </section>
    </div>
  </section>

  <div class="box-header mb-60">
    <h3 class="box-title box-title-td pull-right">
      <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
      <a href="<?=$url_page ?>&them-moi=true&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
      <a href="<?=$url_page ?>&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
    </h3>
  </div>

</form>

<script>
  function checkSubmit(){
    if($("#tenbaiviet_vi").val().trim() == '')
    {
      alert("Hãy nhập tên <?=$name_chude ?>!");
      $("#tenbaiviet_vi").focus();
      return false;
    }
    return true;
  }
</script>
 
<script>
    function OKKK_by_lh(){
        var tenbaiviet_vi = $('input[name="tenbaiviet_vi"]').val();
        $('input[name="seo_title_vi"]').val(tenbaiviet_vi);
        $('input[name="seo_description_vi"]').val(tenbaiviet_vi);
        $('input[name="seo_keywords_vi"]').val(tenbaiviet_vi);
        var tenbaiviet_en = $('input[name="tenbaiviet_en"]').val();
        $('input[name="seo_title_en"]').val(tenbaiviet_en);
        $('input[name="seo_description_en"]').val(tenbaiviet_en);
        $('input[name="seo_keywords_en"]').val(tenbaiviet_en);

        var str = convertVietnamese2(tenbaiviet_vi);
        $("#seo_name").val(str);
        $(".js_okkk").html("[OK]");
    }
</script>