<?php

  $id    = isset($_GET['edit']) && is_numeric($_GET['edit']) ? SHOW_text($_GET['edit']) : 0;
  if($_SERVER['REQUEST_METHOD']=='POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key} = $value;
      }

      $catasort           = str_replace(".", "", $catasort);
      $showhi             = isset($_POST['showhi']) ? 1 : 0;
    }

  if(!empty($_POST))
    {
      $hinhanh                 = UPLOAD_image("icon", "../".$duongdantin."/", time());
      $data                    = array();
      $data['duongdantin']     = $duongdantin;
      $data['catasort']        = $catasort;
      $data['showhi']          = $showhi;
      $data['tenbaiviet_vi']   = $tenbaiviet_vi;
      $data['tenbaiviet_en']   = $tenbaiviet_en != "" ? $tenbaiviet_en : $tenbaiviet_vi;
      $data['mota_vi']         = $mota_vi;
      $data['mota_en']         = $mota_en != "" ? $mota_en : $mota_vi;
      $data['noidung_vi']      = $noidung_vi;
      $data['noidung_en']      = $noidung_en != "" ? $noidung_en : $noidung_vi;


      if($hinhanh != false)
        {
          $data['icon']     = $hinhanh;
          TAO_anhthumb("../".$duongdantin."/".$hinhanh, "../".$duongdantin."/thumb_".$hinhanh, 200, 200);
          if($id > 0){
              $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
              $sql_thongtin = DB_arr($sql_thongtin, 1);
              @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
              @unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon"]);
          }
        }

      if($id == 0){
        $id                           = ACTION_db($data, $table , 'add',NULL,NULL);
        $_SESSION['show_message_on']  =  "Thêm dữ liệu thành công!";
      }else{
        ACTION_db($data, $table, 'update', NULL, "`id` = ".$id);
        $_SESSION['show_message_on'] =  "Cập nhật dữ liệu thành công!";
      }
      LOCATION_js($url_page."&edit=".$id);
      exit();
    }

  if($id > 0) {
      $sql_se             = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
      $sql_se             = DB_arr($sql_se, 1);
      foreach ($sql_se as $key => $value) {
        ${$key} = $value;
      }
      $catasort           = number_format($catasort,0,',','.');

      if($icon != ''){
        $icon   = "<img src='../$duongdantin/thumb_$icon' width='250px' style='display:block'>";
      }
    }
    else {
      $catasort   = layCatasort($table);
      $catasort   = number_format(SHOW_text($catasort),0,',','.');
    }
?>

<section class="content-header">
  <h1><?=$tit_glo ?></h1>
  <ol class="breadcrumb">
      <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
      <li class="active"><?=$tit_glo ?></li>
  </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <?php include _source."mesages.php"; ?>
        <div class="box">
          <div class="box-header with-border">
            <h2 class="h2_title">
                <i class="fa fa-pencil-square-o"></i><?=$id > 0 ? 'Sửa' : 'Thêm mới' ?>
            </h2>
            <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?=$url_page ?>&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
            </h3>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="nav-tabs-custom" style="margin-bottom: 0;">
          <?php include _source."lang.php" ?>
          <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
              <div class="form-group">
                <label>Tên chủ đề <a onclick="$('#tenbaiviet_vi').val('Mới mua hàng')">[Mẫu]</a></label>
                <input type="text" class="form-control" value="<?=!empty($tenbaiviet_vi) ? SHOW_text($tenbaiviet_vi) : ''?>" name="tenbaiviet_vi" id="tenbaiviet_vi">
              </div>
              <div class="form-group">
                <label>Họ tên</label>
                <input type="text" class="form-control" value="<?=!empty($mota_vi) ? SHOW_text($mota_vi) : ''?>" name="mota_vi">
              </div>
              <div class="form-group">
                <label>Nội dung <a onclick="$('#nd_mau').val('Khách hàng [hoten] vừa mới mua hàng thành công!')">[Mẫu]</a></label>
                <input type="text" id="nd_mau" class="form-control" value="<?=!empty($noidung_vi) ? SHOW_text($noidung_vi) : ''?>" name="noidung_vi">
              </div>
            </div>
            <?php if($lang_nb2){ ?>
            <div class="tab-pane" id="tab_2">
              <div class="form-group">
                <label>Tên chủ đề (<?=_lang_nb2_key ?>)</label>
                <input type="text" class="form-control" value="<?=!empty($tenbaiviet_en) ? SHOW_text($tenbaiviet_en) : ''?>" name="tenbaiviet_en" id="tenbaiviet_en">
              </div>
              <div class="form-group">
                <label>Họ tên (<?=_lang_nb2_key ?>)</label>
                <input type="text" class="form-control" value="<?=!empty($mota_en) ? SHOW_text($mota_en) : ''?>" name="mota_en">
              </div>
              <div class="form-group">
                <label>Nội dung (<?=_lang_nb2_key ?>)</label>
                <input type="text" class="form-control" value="<?=!empty($noidung_en) ? SHOW_text($noidung_en) : ''?>" name="noidung_en">
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
        <div class="box p10">
          <div class="form-group">
            <label for="exampleInputFile">Hình ảnh (200px x 200px)</label>
            <?=!empty($icon) > 0 ? $icon : '' ?>
            <input name="icon" type="file" class="form-control" id="exampleInputFile">
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
      </section>
    </div>
  </section>

  <div class="box-header mb-60">
  <h3 class="box-title box-title-td pull-right">
    <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
    <a href="<?=$url_page ?>&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
    <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
  </h3>
</div>
</form>