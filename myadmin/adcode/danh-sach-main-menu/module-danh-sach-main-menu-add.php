<?php
  if(!isset($_GET['edit']) && !isset($_SESSION['admin'])) LOCATION_js("index.php");
  $id = isset($_GET['edit']) && is_numeric($_GET['edit']) ? $_GET['edit'] : 0;
  $table      = '#_step';

  if($_SERVER['REQUEST_METHOD']=='POST')
    {
      
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }
      $catasort           = str_replace(".", "", $_REQUEST['catasort']);
      // $num_view           = str_replace(".", "", $num_view);
      $step = isset($_POST['step']) ? $_POST['step'] : "";
      foreach ($arr_list_lang as $key => $vl) {
        ${"seo_title_".$key}       = LAY_uutien(@${"seo_title_".$key}, @${"tenbaiviet_".$key});
        ${"seo_description_".$key} = LAY_uutien(@${"seo_description_".$key}, @${"tenbaiviet_".$key}); 
        ${"seo_keywords_".$key}    = LAY_uutien(@${"seo_keywords_".$key}, @${"tenbaiviet_".$key});
      }
    }

    if(!empty($_POST)  && isset($_POST['tenbaiviet_vi'])) {
        $seo_name = LAY_uutien($seo_name, $tenbaiviet_vi);
        $hinhanh  = UPLOAD_image("icon", "../".$duongdantin."/", time());
        $data     = array();

        foreach ($arr_list_lang as $key => $vl) {
          $data['seo_title_'.$key]       = @${"seo_title_".$key};
          $data['seo_description_'.$key] = @${"seo_description_".$key};
          $data['seo_keywords_'.$key]    = @${"seo_keywords_".$key};
          $data['tenbaiviet_'.$key]      = @${"tenbaiviet_".$key};
          $data['noidung_'.$key]         = @${"noidung_".$key};
          $data['p1_'.$key]              = @${"p1_".$key};
        }

        $data['ngaydang']             = time();
        $data['duongdantin']          = @$duongdantin;
        $data['map_google']           = @$map_google;

        $data['catasort']             = is_numeric($catasort) ? $catasort : 0;
        $data['showhi']               = isset($_POST['showhi']) ? 1 : 0;
        // $data['num_view']             = is_numeric($num_view) ? $num_view : 0;

        if($step != null){
          $data['step']               = @$step;
        }

        if($id > 0) {
          $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='".$id."' LIMIT 1");
          $sql_thongtin = DB_arr($sql_thongtin, 1);
        }

        if($hinhanh != false)
          {
            $data['icon']             = $hinhanh;
            TAO_anhthumb("../".$duongdantin."/".$hinhanh, "../".$duongdantin."/thumb_".$hinhanh, 500, 500);
            if($id > 0 AND is_array($sql_thongtin)){
              @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
              @unlink("../".$sql_thongtin["duongdantin"]."/thumb_".$sql_thongtin["icon"]);
            }
          }
        if($id == 0){
          $id                          = ACTION_db($data, $table , 'add', NULL,NULL);
          $_SESSION['show_message_on'] =  glo_lang_admin("Thêm dữ liệu thành công!");
          THEM_seoname($id, $seo_name, $table, $id, "0");
        }else{
          ACTION_db($data, $table, 'update', NULL, "`id` = ".$id);
          $_SESSION['show_message_on'] = glo_lang_admin('Cập nhật dữ liệu thành công!');
          THEM_seoname($id, $seo_name, $table, $id, "1");
          
        }
        LOCATION_js($url_page."&edit=".$id);
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
      // $num_view           = number_format($num_view,0,',','.');
      if ($icon != '') {
        $full_icon  = $fullpath."/".$duongdantin."/".$icon;
      }
 

    }
    else 
    {
      $step       = 1;
      $catasort   = layCatasort($table);
      $catasort   = number_format(SHOW_text($catasort),0,',','.');
    }
?>
<section class="content-header">
    <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE]</a> <?php } ?><?=glo_lang_admin("Main module") ?></h1> 
    <ol class="breadcrumb">
        <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> <?=glo_lang_admin('Trang chủ') ?></a></li>
        <li class="active"><?=glo_lang_admin('Quản lý main module') ?></li>
    </ol>
</section>

<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
              <h2 class="h2_title">
                  <i class="fa fa-pencil-square-o"></i> <?=!empty($tenbaiviet_vi) ? glo_lang_admin('Sửa') : glo_lang_admin('Thêm') ?> <?=glo_lang_admin('main module') ?>
              </h2>
              <h3 class="box-title box-title-td pull-right">
                  <button onclick="return CHECK_sb()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                  <?php
                    if(isset($_SESSION['admin'])) echo '<a href="?module='.$module.'&action='.$action.'&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i>Thêm mới</a>';
                  ?>
                  <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
              </h3>
          </div>
          <div class="nav-tabs-custom">
            <?php include _source."lang.php" ?>
            <div class="tab-content">
              <?=admin_input_setting(59) ?>
              <?=admin_input_setting(74) ?>
              <?=admin_input_setting(22) ?>
              <?=admin_input_setting(75) ?>
              <?=admin_input_setting(76) ?>
              <?php
                $tabs = 0;
                foreach ($arr_list_lang as $key => $value) {
                  $tabs++;
              ?>
              <div class="tab-pane <?=$tabs == 1 ? "active" : "" ?>" id="tab_<?=$tabs ?>">
                
                <div class="form-group">
                  <label><?=glo_lang_admin('Tên module') ?> (<?=$value ?>)</label>
                  <input type="text" class="form-control <?=$tabs == 1 ? "cls_ms" : "" ?>" message="<?=glo_lang_admin('Bạn chưa nhập dữ liệu!') ?>" value="<?=!empty(${"tenbaiviet_".$key}) ? SHOW_text(${"tenbaiviet_".$key}) : ''?>" name="tenbaiviet_<?=$key ?>" id="tenbaiviet_<?=$key ?>">
                </div>

                <?php if(in_array(@$id, $module_tenhienthi)){ ?>
                <div class="form-group">
                  <label><?=glo_lang_admin('Tên hiển thị') ?> (<?=$value ?>)</label>
                  <input type="text" class="form-control" value="<?=!empty(${"p1_".$key}) ? SHOW_text(${"p1_".$key}) : ''?>" name="p1_<?=$key ?>" id="p1_<?=$key ?>">
                </div>
                <?php } ?>

                <?php if(in_array(@$id, $module_mota)){ ?>
                <div class="form-group">
                  <label><?=glo_lang_admin('Nội dung') ?> (<?=$value ?>)</label>
                  <textarea id="noidung_<?=$key ?>" name="noidung_<?=$key ?>" class="paEditor"><?=!empty(${"noidung_".$key}) ? SHOW_text(${"noidung_".$key}) : ''?></textarea>
                </div>
                <?php } ?>


                <div class="form-group">
                  <label><?=glo_lang_admin('Seo Title') ?> (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_title_<?=$key ?>" value="<?=!empty(${"seo_title_".$key}) ? Show_text(${"seo_title_".$key}) : "" ?>">
                </div>

                <div class="form-group">
                  <label><?=glo_lang_admin('Seo Description') ?> (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_description_<?=$key ?>" value="<?=(!empty(${"seo_description_".$key})) ? Show_text(${"seo_description_".$key}) : "" ?>">
                </div>

                <div class="form-group">
                  <label><?=glo_lang_admin('Seo keywords') ?> (<?=$value ?>)</label>
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
            <label>Seo name <a data-tooltip="Đường dẫn chuẩn bao gồm các ký tự [a-zA-Z0-9-]."> </a></label>
            <input type="text" class="form-control" name="seo_name" id="seo_name" value="<?=!empty($seo_name) ? Show_text($seo_name) : "" ?>">
            <label class="noweight noweight-top checkbox-mini">
              <input class="minimal auto_get_link" type="checkbox" <?=empty($id) || $id == 0 ? 'checked="checked"' : '' ?>> Lấy đường dẫn tự động
            </label>
          </div>
          <?php if($module_hinhanh == 1){ ?>
          <div class="form-group">
            <label for="exampleInputFile2">Ảnh đại diện <?=!empty($thongtin_step['size_img']) && $thongtin_step['size_img'] != '' ? "(".str_replace("x", "px x ", $thongtin_step['size_img'])."px)" : '' ?></label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon" id="input_icon" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','input_icon');">
                <img src="<?=@$full_icon  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon) && $full_icon != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
              </div>
            </div>
          </div>
          <?php } ?>

          <?php if(in_array(@$id, $module_google)){ ?>
              <div class="form-group">
                <label>Google map</label>
                <input type="text" class="form-control" name="map_google" id="map_google" value="<?=!empty($map_google) ? SHOW_text($map_google) : ''?>">
              </div>
          <?php
            }
          ?>
          
          <?php if(isset($_SESSION['admin'])){  ?>
          <div class="form-group">
            <label>Kiểu hiển thị</label>
            <?=DANHSACH_page(@$step, 'step', 'form-control', 0) ?>
          </div>
          <?php } ?>

          <!-- <div class="form-group">
            <label>Số lượng bài viết hiển thị trên 1 trang</label>
            <input type="text" class="form-control" name="num_view" value="<?=!empty($num_view) ? SHOW_text($num_view) : "0"?>" onkeyup="SetCurrency(this)">
          </div> -->

          <div class="form-group">
            <label>Số thứ tự</label>
            <input type="text" class="form-control" name="catasort" id="catasort" value="<?=!empty($catasort) ? SHOW_text($catasort) : "0"?>" onkeyup="SetCurrency(this)">
          </div>

          <div class="form-group">
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="showhi" class="minimal" <?=isset($showhi) && $showhi == 0 ? '' : 'checked="checked"' ?>> <?=glo_lang_admin("Hiển thị") ?> 
            </label>
          </div>
        </div>
      </section>
    </div>
  </section>

  <div class="box-header mb-60">
    <h3 class="box-title box-title-td pull-right">
      <button onclick="return CHECK_sb()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
      <?php
        if(isset($_SESSION['admin'])) echo '<a href="?module='.$module.'&action='.$action.'&them-moi=true" class="btn btn-primary"><i class="fa fa-plus"></i>Thêm mới</a>';
      ?>
      <a href="<?=$url_page ?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
    </h3>
  </div>
</form>