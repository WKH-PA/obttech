<?php
  $table = '#_seo_name';
  $id    = isset($_GET['edit']) && is_numeric($_GET['edit']) ? SHOW_text($_GET['edit']) : 0;
  if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }
    }
  if(!empty($_POST))
    {
      $data                   = array();

      foreach ($arr_list_lang as $key => $vl) {
        $data['noidung_'.$key]         = ${"noidung_".$key};
        $data['tenbaiviet_'.$key]      = ${"tenbaiviet_".$key};
        $data['p1_'.$key]              = ${"p1_".$key};
      }


		$data['seo_name']    = @$seo_name;
		$data['duongdantin'] = @$duongdantin;
		
		$hinhanh             = UPLOAD_image("icon", "../".$duongdantin."/", time());
		$icon_hover          = UPLOAD_image("icon_hover", "../".$duongdantin."/", time());

		if($id > 0){
			$sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
			$sql_thongtin = DB_arr($sql_thongtin, 1);
		}

		if(isset($_POST['js_xoaanh'])) {
			if($id > 0 && is_array($sql_thongtin)){
				$data['icon']       = "";
				$data['icon_hover'] = "";
				@unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
				@unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon"]);
				@unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon_hover"]);
				@unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon_hover"]);
			}
		}
      	if($hinhanh != false) {
			$data['icon']   = $hinhanh;
			TAO_anhthumb("../".$duongdantin."/".$hinhanh, "../".$duongdantin."/thumb_".$hinhanh, 500, 500); 
			if($id > 0 && is_array($sql_thongtin)){
				@unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
				@unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon"]);
			}
        }

        if($icon_hover != false) {
			$data['icon_hover']   = $icon_hover;
			TAO_anhthumb("../".$duongdantin."/".$icon_hover, "../".$duongdantin."/thumb_".$icon_hover, 500, 500); 
			if($id > 0 && is_array($sql_thongtin)){
				@unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon_hover"]);
				@unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon_hover"]);
			}
        }

        if($id == 0){
	          $id = ACTION_db($data, $table , 'add', NULL, NULL);
	          $_SESSION['show_message_on'] =  "Thêm thông tin khác thành công!";
        }else{
          ACTION_db($data, $table, 'update', NULL, "`id` = '".$id."'");
          $_SESSION['show_message_on'] =  "Cập nhật thông tin khác thành công!";
        }
      LOCATION_js($url_page . "&edit=" . $id);
      exit();
    }

  if($id > 0)
  {
    $sql_se       = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
    $sql_se       = DB_arr($sql_se, 1);
    foreach ($sql_se as $key => $value) {
      ${$key} = SHOW_text($value);
    }

    if($icon != '') {
      $full_icon = "../$duongdantin/$icon";
    }
    if($icon_hover != '') {
      $full_icon_hover = "../$duongdantin/$icon_hover";
    }
    
  }
?>

<section class="content-header">
    <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE]</a> <?php } ?>Quản lý thông tin khác</h1> 
    <ol class="breadcrumb">
        <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
        <li class="active">Quản lý thông tin khác</li>
    </ol>
</section>

<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
              <h2 class="h2_title">
                  <i class="fa fa-pencil-square-o"></i> <?=$id > 0 ? 'Sửa' : 'Thêm' ?> thông tin khác
              </h2>
              <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
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
                  <label>Tên bài viết (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty(${"tenbaiviet_".$key}) ? SHOW_text(${"tenbaiviet_".$key}) : ''?>" name="tenbaiviet_<?=$key ?>" id="tenbaiviet_<?=$key ?>">
                </div>
                <?php if(admin_check(@$is_mota)){ ?>
                <div class="form-group">
                  <?=admin_input("is_mota", @$is_mota, "#_seo_name", @$id) ?>
                  <label>Mô tả (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty(${"p1_".$key}) ? SHOW_text(${"p1_".$key}) : ''?>" name="p1_<?=$key ?>" id="p1_<?=$key ?>">
                </div>
                <?php } ?>

                <div class="form-group">
                  <label>Nội dung bài viết (<?=$value ?>)</label>
                  <textarea id="noidung_<?=$key ?>" name="noidung_<?=$key ?>" class="paEditor"><?=!empty(${"noidung_".$key}) ? SHOW_text(${"noidung_".$key}) : ''?></textarea>
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10">
          <?php if(admin_check(@$is_hinhanh)){ ?>
          <div class="form-group">
            <?=admin_input("is_hinhanh", @$is_hinhanh, "#_seo_name", @$id) ?>
            <?=admin_input_text("is_hinhanh_size", @$is_hinhanh_size, "#_seo_name", @$id) ?>
            <label for="exampleInputFile2">Hình ảnh <?=@$is_hinhanh_size ?></label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon" id="input_icon" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','input_icon');">
                <img src="<?=@$full_icon  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon) && $full_icon != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
              </div>
            </div>
          </div>
          <?php } ?>

          <?php if(admin_check(@$is_hinhanh_2)){ ?>
          <div class="form-group">
            <?=admin_input("is_hinhanh_2", @$is_hinhanh_2, "#_seo_name", @$id) ?>
            <?=admin_input_text("is_hinhanh_size_2", @$is_hinhanh_size_2, "#_seo_name", @$id) ?>
            <label for="exampleInputFile2">Hình ảnh <?=@$is_hinhanh_size_2 ?></label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon_hover" id="input_icon_2" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon_2','input_icon_2');">
                <img src="<?=@$full_icon_hover  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon_hover) && $full_icon_hover != "") echo "display: block"; else echo "display: none" ?>" id="img_icon_2">
              </div>
            </div>
            <?php if(isset($_SESSION['admin'])){ ?>
            <label><input type="checkbox" name="js_xoaanh"> Xóa ảnh</label>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if(admin_check(@$is_lienket)){ ?>
          <div class="form-group">
            <?=admin_input("is_lienket", @$is_lienket, "#_seo_name", @$id) ?>
            <label>Liên kết <a data-tooltip="Nếu Link đến URL của Web khác thì phải có http:// ở đầu."> </a></label>
            <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? $seo_name : ''?>"> 
          </div>
          <?php } ?>
        </div>
      </section>
    </div>
  </section>
  <div class="box-header mb-60">
    <h3 class="box-title box-title-td pull-right">
      <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
      <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
    </h3>
  </div>
</form>

<script>
  function checkSubmit(){
    if($("#tenbaiviet_vi").val() == '')
    {
      alert("Hãy nhập tên bài viết!");
      $("#tenbaiviet_vi").focus();
      return false;
    }
    return true;
  }
</script>