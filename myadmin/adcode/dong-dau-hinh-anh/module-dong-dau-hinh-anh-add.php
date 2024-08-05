<?php
  $table = '#_seo';
  $name_title    = "Cài đặt ảnh đóng dấu";
  $name_chude    = "ảnh đóng dấu";
  
  if($_SERVER['REQUEST_METHOD']=='POST')
    {
      foreach ($_POST as $key => $value) {
        ${$key}           = $value;
      }
    }

  if(!empty($_POST))
    {
      $data                            = array();
      if(isset($_POST['dongdau_step'])) {
        $data['dongdau_step']          = $dongdau_step;
      }
      
      $data['dongdau_check'] = isset($_POST['dongdau_check']) ? 1 : 0;
      
      $dongdau_img           = UPLOAD_image("dongdau_img", "../".$duongdantin."/", time());
      
      $sql_thongtin          = DB_que("SELECT * FROM `#_seo` LIMIT 1");
      $sql_thongtin          = DB_arr($sql_thongtin, 1);

      if($dongdau_img != ''){
        $data['dongdau_img']             = $dongdau_img;
        @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["dongdau_img"]);
      }

      ACTION_db($data, '#_seo','update',NULL,"1 = 1");
      $_SESSION['show_message_on'] = "Cập nhật dữ liệu thành công!";
      LOCATION_js($url_page."&them-moi=true");
      exit();
    }
 

  $sql_se             = DB_que("SELECT * FROM `#_seo` LIMIT 1");
  $sql_se             = DB_arr($sql_se, 1);
  foreach ($sql_se as $key => $value) {
    ${$key} = Show_text($value);
  }

  if($dongdau_img != ''){
    $full_dongdau_img = "../$duongdantin/$dongdau_img";
  }

  $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$dongdau_step' LIMIT 1");
  $thongtin_step = DB_arr($thongtin_step, 1);
?>

<section class="content-header">
  <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE] </a> <?php } ?><?=$name_title ?></h1> 
  <ol class="breadcrumb">
      <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
      <li class="active">Quản lý <?=$name_chude ?></li>
  </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post"  enctype='multipart/form-data'>
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
            <h2 class="h2_title">
                <i class="fa fa-pencil-square-o"></i><?=$name_title ?>
            </h2>
            <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?=$url_page ?>&step=<?=@$step?>&id_step=<?=@$id_step?>" class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
            </h3>
          </div>
          <div class="nav-tabs-custom">
            <div class="tab-content">
              <div class="tab-pane active" >
                <div class="form-group">
                  <label for="exampleInputFile2">Ảnh đóng dấu <?=!empty($thongtin_step['size_img']) && $thongtin_step['size_img'] != '' ? "(".str_replace("x", "px x ", $thongtin_step['size_img'])."px)" : '' ?></label>
                  <div class="dv-anh-chitiet-img-cont">
                    <div class="dv-anh-chitiet-img">
                      <p><i class="fa fa-cloud-upload"></i></p>
                      <input type="file" name="dongdau_img" id="dongdau_img" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','dongdau_img');">
                      <img src="<?=@$full_dongdau_img  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_dongdau_img) && $full_dongdau_img != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10">
          <?php if(!empty($_SESSION['admin'])){ ?>
          <div class="form-group">
            <label>Step</label>
            <input type="text" class="form-control" name="dongdau_step" id="dongdau_step" value="<?=!empty($dongdau_step) ? Show_text($dongdau_step) : "" ?>">
            
          </div>
          <?php } ?>
          <div class="form-group">
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="dongdau_check" class="minimal minimal_click" <?=isset($dongdau_check) && $dongdau_check == 1 ? 'checked="checked"' : '' ?> colum="dongdau_check" idcol="<?=$id ?>" table="#_seo" value="1"> Tự động đóng dấu khi cập nhật sản phẩm
            </label>
          </div>
        </div>

      </section>
    </div>
  </section>
  <div class="box-header mb-60">
    <h3 class="box-title box-title-td pull-right">
        
    </h3>
  </div>
</form>
