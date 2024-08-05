<?php
  $table = '#_banner';
  $id    = isset($_GET['edit']) && is_numeric($_GET['edit']) ? $_GET['edit'] : 0;
  if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }

      $catasort         = str_replace(".", "", $catasort);
      $showhi           = isset($_POST['showhi']) ? 1 : 0;
      $check_video      = isset($_POST['check_video']) ? 1 : 0;
 
    }
  if(!empty($_POST))
    {
      $data                   = array();
      foreach ($arr_list_lang as $key => $vl) {

        $data['noidung_'.$key]         = ${"noidung_".$key};
        $data['tenbaiviet_'.$key]           = ${"tenbaiviet_".$key};
        $data['mota_'.$key]               = ${"mota_".$key};
      }


	$data['id_parent']   = is_numeric(@$id_parent) ? @$id_parent : 0;
	$data['seo_name']    = @$seo_name;
	$data['catasort']    = is_numeric(@$catasort) ? @$catasort : 0;
	$data['showhi']      = is_numeric(@$showhi) ? @$showhi : 0;
	$data['check_video'] = is_numeric(@$check_video) ? @$check_video : 0;
	$data['duongdantin'] = @$duongdantin;
	$data['blank']       = @$blank;
	$data['id_kietxuat'] = is_numeric(@$id_kietxuat) ? @$id_kietxuat : 0;
	$data['id_danhmuc']  = is_numeric(@$id_danhmuc) ? @$id_danhmuc : 0;
	
	$data['ngaydang']    = time();
	$data['catasort']    = is_numeric($catasort) ? $catasort : 0;
	$data['p1']          = @$p1;
	$data['p2']          = @$p2;
	$data['fontawesome'] = @$fontawesome;
	
	
	$hinhanh             = UPLOAD_image("icon", "../".$duongdantin."/", time());
	$icon_1              = UPLOAD_image("icon_1", "../".$duongdantin."/", time());

	$video               = UPLOAD_file("video", "../datafiles/files/", time());

      if($id > 0){
        $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
        $sql_thongtin = DB_arr($sql_thongtin, 1);
      }
      if ($video) {
        $data['video']     = $video;
        if($id > 0 && is_array($sql_thongtin)){
          @unlink("../datafiles/files/".$sql_thongtin["video"]);
        }
      }

      if($hinhanh) {
          $data['icon']   = $hinhanh;
          TAO_anhthumb("../".$duongdantin."/".$hinhanh, "../".$duongdantin."/thumb_".$hinhanh, 300, 300); 
          if($id > 0 && is_array($sql_thongtin)){

            @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
            @unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon"]);

          }
        }
       if($icon_1) {
          $data['icon_1']   = $icon_1;
          TAO_anhthumb("../".$duongdantin."/".$icon_1, "../".$duongdantin."/thumb_".$icon_1, 300, 300); 
          if($id > 0 && is_array($sql_thongtin)){

            @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon_1"]);
            @unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon_1"]);

          }
        }
        
      if($id == 0){
        $id = ACTION_db($data, $table , 'add', NULL,NULL);
        $_SESSION['show_message_on'] =  "Thêm hình ảnh thành công!";
      }else{
        ACTION_db($data, $table, 'update', NULL, "`id` = '".$id."'");
        $_SESSION['show_message_on'] =  "Cập nhật hình ảnh thành công!";
      }
      LOCATION_js($url_page."&id-parent=".$id_parent."&edit=".$id);
      exit();
    }

  if($id > 0) {
      $sql_se           = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' AND `id_parent` = '$id_parent' LIMIT 1");
      $sql_se           = DB_arr($sql_se, 1);

      foreach ($sql_se as $key => $value) {
        ${$key} = SHOW_text($value);
      }

      $catasort         = number_format($catasort,0,',','.');


      if($icon != '') {
        $full_icon   = "../$duongdantin/$icon";        
      }
      if($icon_1 != '') {
        $full_icon_1   = "../$duongdantin/$icon_1";        
      }
    }
  else 
    {
      $catasort   = layCatasort($table, " `id_parent` = '$id_parent'");
      $catasort   = number_format(SHOW_text($catasort),0,',','.');
    }
?>
 
<section class="content-header">
    <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE]</a> <?php } ?>Danh sách hình ảnh</h1> 
    <ol class="breadcrumb">
        <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
        <li class="active"><?=$loaibanner['tenbaiviet_vi'] ?></li>
    </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
              <h2 class="h2_title">
                  <i class="fa fa-pencil-square-o"></i> <?=$id > 0 ? 'Sửa' : 'Thêm' ?> hình ảnh
              </h2>
              <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?=$url_page ?>&id-parent=<?=$id_parent ?>&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                <a href="<?=$url_page ?>&id-parent=<?=$id_parent ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>

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
                  <label>Tên banner (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty(${"tenbaiviet_".$key}) ? SHOW_text(${"tenbaiviet_".$key}) : ''?>" name="tenbaiviet_<?=$key ?>" id="tenbaiviet_<?=$key ?>">
                </div>

                <?php if($loaibanner['is_mota'] == 1 || !empty($_SESSION['admin'])){ ?>
                <div class="form-group">
                  <?php if(!empty($_SESSION['admin'])){ ?>
                  <input type='checkbox' class='minimal minimal_click' colum="is_mota" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_mota'] == 1 ? 'checked="checked"' : "" ?>>
                  <?php } ?>
                  <label>Mô tả (<?=$value ?>)</label>
                  <input type="text" class="form-control " name="mota_<?=$key ?>" id="mota_<?=$key ?>" value="<?=!empty(${"mota_".$key}) ? SHOW_text(${"mota_".$key}) : ''?>">
                </div>
                <?php } ?>
                <?php if($loaibanner['is_noidung'] == 1 || !empty($_SESSION['admin'])){ ?>
                <div class="form-group">
                  <?php if(!empty($_SESSION['admin'])){ ?>
                  <input type='checkbox' class='minimal minimal_click' colum="is_noidung" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_noidung'] == 1 ? 'checked="checked"' : "" ?>>
                  <?php } ?>
                  <label>Nội dung (<?=$value ?>)</label> 
                  <textarea id="noidung_<?=$key ?>" name="noidung_<?=$key ?>" class="form-control paEditor" ><?=!empty(${"noidung_".$key}) ? SHOW_text(${"noidung_".$key}) : ''?></textarea>
                </div>
                <?php } ?>
              </div>
             <?php } ?>

            </div>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10">
          <?php if($loaibanner['is_font_hinhanh'] == 1 || !empty($_SESSION['admin'])){ ?>
          <?php if(!empty($_SESSION['admin'])){ ?>
          <input type='checkbox' class='minimal minimal_click' colum="is_font_hinhanh" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_font_hinhanh'] == 1 ? 'checked="checked"' : "" ?>>
          <?php } ?>
          <div class="form-group">
            <label for="exampleInputFile2">Hình ảnh (<?=$loaibanner['rong'].'x'.$loaibanner['cao'].'px' ?>)</label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload"></i></p>
                <input type="file" name="icon" id="input_icon" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','input_icon');">
                <img src="<?=@$full_icon  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon) && $full_icon != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
              </div>
            </div>
          </div>
          <?php } ?>
          <!--  -->
          <?php if($loaibanner['is_font_hinhanh_1'] == 1 || !empty($_SESSION['admin'])){ ?>
          <?php if(!empty($_SESSION['admin'])){ ?>
          <input type='checkbox' class='minimal minimal_click' colum="is_font_hinhanh_1" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_font_hinhanh_1'] == 1 ? 'checked="checked"' : "" ?>>
          <?php } ?>
          <div class="form-group">
            <label for="exampleInputFile2">Hình ảnh khác(<?=$loaibanner['rong'].'x'.$loaibanner['cao'].'px' ?>)</label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload"></i></p>
                <input type="file" name="icon_1" id="input_iconicon_1" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_iconicon_1','input_iconicon_1');">
                <img src="<?=@$full_icon_1  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon_1) && $full_icon_1 != "") echo "display: block"; else echo "display: none" ?>" id="img_iconicon_1">
              </div>
            </div>
          </div>
          <?php } ?>
          <!--  -->

          
          <?php if($loaibanner['is_font_anh'] == 1 || !empty($_SESSION['admin'])){ ?>
          <?php if(!empty($_SESSION['admin'])){ ?>
          <input type='checkbox' class='minimal minimal_click' colum="is_font_anh" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_font_anh'] == 1 ? 'checked="checked"' : "" ?>>
          <?php } ?>
          <div class="form-group">
            <label for="exampleInputFile">Icon </a></label>
            <input type="text" class="form-control icon_add" name="fontawesome" value="<?=!empty($fontawesome) ? Show_text($fontawesome) : "" ?>">
            <div class="dv-cont-showicon">
              <label>
                <a onclick="$('.dv-show-icon').toggle()" ><i class="fa fa-plus "></i> Chọn icon</a>
                <i class="<?=!empty($fontawesome) ? SHOW_text($fontawesome) : ''?>" id="show_icon_fa" ></i>
              </label>
              <div class="dv-show-icon" >
                <?php $id_add = ".icon_add"; include _source."fa_assom.php"; ?>
              </div>
            </div>
          </div>
          <?php } ?>

          <?php 
            if($id_parent == 34) {
          ?>
          <div class="form-group">
            <label>Nhóm danh mục</label>
            <select name="id_danhmuc" class="form-control">
              <option value="0">Chọn nhóm danh mục</option>
              <?php foreach ($danhmuc_gr as $rows) { ?>
              <option value="<?=$rows['id'] ?>" <?=LAY_selected(@$id_danhmuc, $rows['id']) ?>><?=$rows['tenbaiviet_vi'] ?></option>
              <?php } ?>
            </select>
          </div>
          <?php } ?>
          <?php 
            if($id_parent == 37) {
          ?>
          <div class="form-group">
            <label>Toạ độ (TOP)</label>
            <input type="text" class="form-control" name="p1" value="<?=!empty($p1) ? SHOW_text($p1) : ''?>">
          </div>
          <div class="form-group">
            <label>Toạ độ (LEFT)</label>
            <input type="text" class="form-control" name="p2" value="<?=!empty($p2) ? SHOW_text($p2) : ''?>">
          </div>
          <?php } ?>
          <?php 
            if($id_parent == 250) {
              $rows_toado = LAY_banner_new("`id_parent` = 37");
          ?>
          <div class="form-group">
            <label>Khu vực</label>
            <select name="id_danhmuc" class="form-control">
              <?php
                foreach ($rows_toado as $rows_td) {
              ?>
              <option value="<?=$rows_td['id'] ?>" <?=LAY_selected(@$id_danhmuc, $rows_td['id']) ?>><?=$rows_td['tenbaiviet_vi'] ?></option>
              <?php } ?>
            </select>
          </div>
          <?php } ?>
          <?php 
            if($id_parent == 38) {
              $menu_pr = DB_que("SELECT `id` FROM `#_menu` WHERE `id_parent` = 0 ORDER BY `catasort` ASC, `id` ASC LIMIT 1");
              $menu_pr = DB_arr($menu_pr, 1);
              $menu_pr = $menu_pr["id"];
              $danhmuc_gr = DB_fet("*", "`#_menu`","`id_parent` = '$menu_pr'","`catasort` ASC, `id` ASC","","arr");
          ?>
          <div class="form-group">
            <label>Nhóm menu</label>
            <select name="id_danhmuc" class="form-control">
              <option value="0">Chọn nhóm danh mục</option>
              <?php foreach ($danhmuc_gr as $rows) { ?>
              <option value="<?=$rows['id'] ?>" <?=LAY_selected(@$id_danhmuc, $rows['id']) ?>><?=$rows['tenbaiviet_vi'] ?></option>
              <?php } ?>
            </select>
          </div>
          <?php } ?>
          <?php if($loaibanner['is_video'] == 1 || !empty($_SESSION['admin'])){ ?>
          <?php if(!empty($_SESSION['admin'])){ ?>
          <input type='checkbox' class='minimal minimal_click' colum="is_video" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_video'] == 1 ? 'checked="checked"' : "" ?>>
          <?php } ?>
          <div class="form-group">
            <label for="exampleInputFile">Video <a data-tooltip="Chỉ upload 1 file [*.mp4] dung lượng file tối đa 10MB"> </a></label>
            <?=!empty($video) ? '</br>'.$video : '' ?>
            <input name="video" type="file" class="form-control" id="exampleInputFile">
            <label style=" margin-top: 10px; margin-bottom: 0;"><input type="checkbox" class="minimal" name="check_video" value="1" <?=LAY_checked(@$check_video, 1) ?>> Ưu tiên chạy video</label>
          </div>
          <?php } ?>
          <?php if($loaibanner['is_lienket'] == 1 || !empty($_SESSION['admin'])){ ?>
          <div class="form-group">
          <?php if(!empty($_SESSION['admin'])){ ?>
          <input type='checkbox' class='minimal minimal_click' colum="is_lienket" idcol="<?=$loaibanner['id'] ?>" table="#_banner_danhmuc" value='1' <?=$loaibanner['is_lienket'] == 1 ? 'checked="checked"' : "" ?>>
          <?php } ?>
            <label>Liên kết <a data-tooltip="Nếu Link đến URL của Web khác thì phải có http:// ở đầu."> </a></label>
            <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? SHOW_text($seo_name) : ''?>">
          </div>
          <div class="form-group">
            <label>Hiển thị liên kết</label>
            <select name="blank" class="form-control">
              <option value="" <?=LAY_selected(@$blank, "") ?>>Mặc định</option>
              <option value="_blank" <?=LAY_selected(@$blank, "_blank") ?>>Cửa sổ mới</option>     
            </select>
          </div>
          <?php } ?>


          <div class="form-group">
            <label>Số thứ tự</label>
            <input type="text" class="form-control" name="catasort" id="catasort" value="<?=SHOW_text($catasort)?>" onkeyup="SetCurrency(this)">
          </div>
          <?php 
            if($id_parent == 162) {
          ?>
          <div class="form-group">
            <label class="mr-20 checkbox-mini"><input type="checkbox" class="minimal" name="check_video" value="1" <?=LAY_checked(@$check_video, 1) ?>> Text canh giữa</label>
          </div>
          <?php } ?>
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
      <a href="<?=$url_page ?>&id-parent=<?=$id_parent ?>&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
      <a href="<?=$url_page ?>&id-parent=<?=$id_parent ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
    </h3>
  </div>
</form>

<script>
  function checkSubmit(){
    if($("#tenbaiviet_vi").val() == '')
    {
      alert("Hãy nhập tên banner!");
      $("#tenbaiviet_vi").focus();
      return false;
    }
    return true;
  }
</script>