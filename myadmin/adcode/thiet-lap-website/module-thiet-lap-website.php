<?php
  if($_SERVER['REQUEST_METHOD']=='POST')
  {
    foreach ($_POST as $key => $value) {
      ${$key} = $value;
    }
    $is_key_tenmien_phu = @explode("\n", $is_key_tenmien_phu);
    $list_id_tm         = "";
    foreach ($is_key_tenmien_phu as $tm) {
      $tm = trim($tm);
      $tm = str_replace("http://", "", $tm);
      $tm = str_replace("https://", "", $tm);
      $tm = str_replace("www", "", $tm);
      $tm = str_replace("/", "", $tm);
      $tm = strtoupper($tm);


      $check_tm   = DB_que("SELECT `id` FROM `#_subdomain` WHERE `tenbaiviet_vi` = '$tm' LIMIT 1");
      if(!DB_num($check_tm)){
        $data_tm                  = array();
        $data_tm['tenbaiviet_vi'] = $tm;
        $idtm = ACTION_db($data_tm, '#_subdomain','add',NULL,NULL);
        $list_id_tm .= $list_id_tm == "" ? $idtm : ",".$idtm;
      }
      else {
        $check_tm = DB_arr($check_tm, 1);
        $list_id_tm .= $list_id_tm == "" ? $check_tm['id'] : ",".$check_tm['id'];
      }
    }
    DB_que("DELETE FROM `#_subdomain` WHERE `id` NOT IN (".$list_id_tm.")");

    foreach ($arr_list_lang as $key => $vl) {
      ${"seo_title_".$key}       = LAY_uutien(@${"seo_title_".$key}, @${"tenbaiviet_".$key});
      ${"seo_description_".$key} = LAY_uutien(@${"seo_description_".$key}, @${"tenbaiviet_".$key}); 
      ${"seo_keywords_".$key}    = LAY_uutien(@${"seo_keywords_".$key}, @${"tenbaiviet_".$key});
    }
  }

  if(!empty($_POST) && isset($_POST['tenbaiviet_vi']))
  {
    $data                            = array();

    foreach ($arr_list_lang as $key => $vl) {
      $data['seo_title_'.$key]            = ${"seo_title_".$key};
      $data['seo_description_'.$key]      = ${"seo_description_".$key};
      $data['seo_keywords_'.$key]         = ${"seo_keywords_".$key};
      $data['tenbaiviet_'.$key]           = ${"tenbaiviet_".$key};
      $data['diachi_'.$key]               = ${"diachi_".$key};
    }

    $data['slider_speed']            = $slider_speed;
    $data['slider_cho']              = $slider_cho;
    $data['font_name']               = $font_name;
    $data['font_link']               = $font_link;
    

    $data['sodienthoai_vi']          = $sodienthoai_vi;
    $data['hotline_vi']              = $hotline_vi;
    $data['email_vi']                = $email_vi;
    
    $data['robots']                  = $robots;
    $data['duongdantin']             = $duongdantin;
    
    $data['fb_app']                  = $fb_app;
    $data['fb_id']                   = $fb_id;
    
    $data['em_ip']                   = $em_ip;
    $data['em_taikhoan']             = $em_taikhoan;
    $data['em_pass']                 = $em_pass;
    $data['js_google_anilatic']      = $js_google_anilatic;
    $data['js_google_anilatic_body'] = $js_google_anilatic_body;
    $data['is_https']                = isset($_POST['is_https']) ? 1 : 0;
    $data['is_comment']              = isset($_POST['is_comment']) ? 1 : 0;
    $data['is_lang']                 = isset($_POST['is_lang']) ? 1 : 0;
    $data['is_saochep']              = isset($_POST['is_saochep']) ? 1 : 0;
    $data['is_tiengviet']            = isset($_POST['is_tiengviet']) ? 1 : 0;
    $data['fb_app_id']               = @$fb_app_id;
    $data['fb_app_secret']           = @$fb_app_secret;
    $data['fb_url']                  = @$fb_url;
    $data['gg_client_id']            = @$gg_client_id;
    $data['gg_client_secret']        = @$gg_client_secret;
    $data['gg_url']                  = @$gg_url;
    $data['lic_name']                = @$lic_name;
    $data['lic_key']                 = @$lic_key;
    $data['css_pc']                 = @$css_pc;
    $data['css_mb']                 = @$css_mb;
    $data['slider_hieuung']         = @$slider_hieuung;
    

    $icon                            = UPLOAD_image("icon", "../".$duongdantin."/", time());
    $favico                          = UPLOAD_image("favico", "../".$duongdantin."/", time());

    $sql_thongtin = DB_que("SELECT * FROM `#_seo` LIMIT 1");
    $sql_thongtin = DB_arr($sql_thongtin, 1);

    if($icon != ''){
      $data['icon']             = $icon;
      @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["icon"]);
    }

    if($favico != ''){
      $data['favico']           = $favico;
      @unlink("../".$sql_thongtin["duongdantin"]."/".$sql_thongtin["favico"]);
    }

    ACTION_db($data, '#_seo','update',NULL,"1 = 1");
    $_SESSION['show_message_on'] = "Cập nhật dữ liệu thành công!";
  }

  $sql_se             = DB_que("SELECT * FROM `#_seo` LIMIT 1");
  $sql_se             = DB_arr($sql_se, 1);
  foreach ($sql_se as $key => $value) {
    ${$key} = Show_text($value);
    if($key = 'js_google_anilatic') {
      $js_google_anilatic = $sql_se['js_google_anilatic'];
    }
    if($key = 'js_google_anilatic_body') {
      $js_google_anilatic_body = $sql_se['js_google_anilatic_body'];
    }
  }

  if($icon != ''){
    $full_icon = "../$duongdantin/$icon";
  }
  if($favico != ''){
    $full_icon_hover = "../$duongdantin/$favico";
  }

?>

<section class="content-header">
    <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE]</a> <?php } ?>Thiết lập website</h1> 
    <ol class="breadcrumb">
        <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
        <li class="active">Thiết lập website</li>
    </ol>
</section>

<form id="form_submit" name="form_submit" action="" method="post" enctype='multipart/form-data'>
  <input type="hidden" name="token" value="<?=GET_token() ?>">
  <section class="content form_create">
    <div class="row">
      <section class="col-lg-12">
        <div class="box">
          <div class="box-header with-border">
              <h2 class="h2_title">
                  <i class="fa fa-pencil-square-o"></i> Cập nhật
              </h2>
              <h3 class="box-title box-title-td pull-right">
                  <button onclick="return checkSubmit()" type="submit" name="capnhat" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
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
                  <label>Tên công ty (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="tenbaiviet_<?=$key ?>" value="<?=${"tenbaiviet_".$key} ?>">
                </div>
                
                <div class="form-group">
                  <label>Địa chỉ (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="diachi_<?=$key ?>" value="<?=${"diachi_".$key} ?>">
                </div>
                <div class="form-group">
                  <label>Seo Title (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_title_<?=$key ?>" value="<?=${"seo_title_".$key} ?>">
                </div>

                <div class="form-group">
                  <label>Seo Description (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_description_<?=$key ?>" value="<?=${"seo_description_".$key} ?>">
                </div>

                <div class="form-group">
                  <label>Seo keywords (<?=$value ?>)</label>
                  <input type="text" class="form-control" name="seo_keywords_<?=$key ?>" value="<?=${"seo_keywords_".$key} ?>">
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
            <label for="exampleInputFile2">Logo</label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="icon" id="input_icon" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon','input_icon');">
                <img src="<?=@$full_icon  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon) && $full_icon != "") echo "display: block"; else echo "display: none" ?>" id="img_icon">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputFile2">Favico</label>
            <div class="dv-anh-chitiet-img-cont">
              <div class="dv-anh-chitiet-img">
                <p><i class="fa fa-cloud-upload" aria-hidden="true"></i></p>
                <input type="file" name="favico" id="input_icon_hover" class="cls_hinhanh" accept="image/*" onchange="pa_previewImg(event, '#img_icon_hover','input_icon_hover');">
                <img src="<?=@$full_icon_hover  ?>" alt="" class="img_chile_dangtin" style="<?php if(!empty($full_icon_hover) && $full_icon_hover != "") echo "display: block"; else echo "display: none" ?>" id="img_icon_hover">
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <label>Số điện thoại</label>
            <input type="text" class="form-control" name="sodienthoai_vi" value="<?=$sodienthoai_vi ?>">
          </div>
          <div class="form-group">
            <label>Hotine</label>
            <input type="text" class="form-control" name="hotline_vi" value="<?=$hotline_vi ?>">
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control" name="email_vi" value="<?=$email_vi ?>">
          </div>
        </div>
        <div class="box p10">
          <div class="form-group">
          	<!-- <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_intro" class="minimal minimal_click" <?=isset($is_intro) && $is_intro == 1 ? 'checked="checked"' : '' ?> colum="is_intro" idcol="<?=$id ?>" table="#_seo" value="1"> Trang Intro
            </label> -->
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_https" class="minimal minimal_click" <?=isset($is_https) && $is_https == 1 ? 'checked="checked"' : '' ?> colum="is_https" idcol="<?=$id ?>" table="#_seo" value="1"> Bật Https
            </label>
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_comment" class="minimal minimal_click" <?=isset($is_comment) && $is_comment == 1 ? 'checked="checked"' : '' ?> colum="is_comment" idcol="<?=$id ?>" table="#_seo" value="1"> Bật Comment Facebook
            </label>
            <?php if($lang_nb2){ ?>
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_lang" class="minimal minimal_click" <?=isset($is_lang) && $is_lang == 1 ? 'checked="checked"' : '' ?> colum="is_lang" idcol="<?=$id ?>" table="#_seo" value="1"> Bật ngôn ngữ
            </label>
            <?php } ?>
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_saochep" class="minimal minimal_click" <?=isset($is_saochep) && $is_saochep == 1 ? 'checked="checked"' : '' ?> colum="is_saochep" idcol="<?=$id ?>" table="#_seo" value="1"> Chống sao chép 
            </label>
            <?php if($lang_nb2){ ?>
            <label class="mr-20 checkbox-mini">
              <input type="checkbox" name="is_tiengviet" class="minimal minimal_click" <?=isset($is_tiengviet) && $is_tiengviet == 1 ? 'checked="checked"' : '' ?> colum="is_tiengviet" table="#_seo" idcol="1"> Tiếng Việt (Mặc định)
            </label>
            <?php } ?>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Facebook App</label>
            <input type="text" class="form-control" name="fb_app" value="<?=$fb_app ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Facebook ID</label>
            <input type="text" class="form-control" name="fb_id" value="<?=$fb_id ?>">
          </div>
          <?php if(!empty($_SESSION['admin'])){ ?>
          <label class="mr-20 checkbox-mini">
            <input type="checkbox" name="is_login_fb" class="minimal minimal_click" <?=isset($is_login_fb) && $is_login_fb == 1 ? 'checked="checked"' : '' ?> colum="is_login_fb" idcol="<?=$id ?>" table="#_seo" value="1"> Login FB
          </label>
          <label class="mr-20 checkbox-mini">
            <input type="checkbox" name="is_login_gg" class="minimal minimal_click" <?=isset($is_login_gg) && $is_login_gg == 1 ? 'checked="checked"' : '' ?> colum="is_login_gg" idcol="<?=$id ?>" table="#_seo" value="1"> Login GG 
          </label>
          <?php } ?>

          <?php if($is_login_fb == 1){ ?>
          <div class="form-group">
            <label for="exampleInputFile">Facebook App Id</label>
            <input type="text" class="form-control" name="fb_app_id" value="<?=$fb_app_id ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Facebook App Secret</label>
            <input type="text" class="form-control" name="fb_app_secret" value="<?=$fb_app_secret ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Facebook GetLoginUrl</label>
            <input type="text" class="form-control" name="fb_url" value="<?=$fb_url ?>">
          </div>
          <?php } if($is_login_gg == 1){ ?>
          <div class="form-group">
            <label for="exampleInputFile">Google CLIENT ID</label>
            <input type="text" class="form-control" name="gg_client_id" value="<?=$gg_client_id ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Google CLIENT SECRET</label>
            <input type="text" class="form-control" name="gg_client_secret" value="<?=$gg_client_secret ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Google CLIENT REDIRECT URL</label>
            <input type="text" class="form-control" name="gg_url" value="<?=$gg_url ?>">
          </div>
          <?php } ?>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10" style="margin-top: 10px">
          <div class="form-group">
            <label for="exampleInputFile">Cấu hình chung</label>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Thời gian chạy slider (s) <a data-tooltip="Thời gian chạy 1 slider ảnh, nếu cho thời gian 1s nhập 1, 1.5 giây nhập 1.5"> </a></label>
            <input type="text" class="form-control" name="slider_speed" value="<?=isset($slider_speed) ? $slider_speed : 1 ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Thời gian chờ slider (s)</label>
            <input type="text" class="form-control" name="slider_cho" value="<?=isset($slider_cho) ? $slider_cho : 1 ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Hiệu ứng</label>
            <select name="slider_hieuung" class="form-control">
              <option value="0" <?=LAY_selected(@$slider_hieuung, "0") ?>>Mặc định</option>
              <option value="1" <?=LAY_selected(@$slider_hieuung, "1") ?>>fadeIn - fadeOut</option>
              <option value="2" <?=LAY_selected(@$slider_hieuung, "2") ?>>bounceIn - bounceOut</option>
              <option value="3" <?=LAY_selected(@$slider_hieuung, "3") ?>>flipInX - flipInY</option>
              <option value="4" <?=LAY_selected(@$slider_hieuung, "4") ?>>bounceInUp - fadeOutUp</option>
              <option value="5" <?=LAY_selected(@$slider_hieuung, "5") ?>>bounceIn - bounceOutUp</option>
            </select>
          </div>

          <div class="form-group">
            <label for="exampleInputFile">Tên font <a data-tooltip='Ví dụ link href=https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700&display=swap  thì nhập tên font là Roboto'></a></label>
            <input type="text" class="form-control" name="font_name" value="<?=$font_name ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Link font <a data-tooltip='Nhập link từ google font https://fonts.google.com/'></a></label>
            <textarea class="form-control" name="font_link"><?=$font_link ?></textarea>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Css PC</label>
            <textarea class="form-control" name="css_pc" style="min-height: 200px"><?=$css_pc ?></textarea>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Css Mobile</label>
            <textarea class="form-control" name="css_mb" style="min-height: 200px"><?=$css_mb ?></textarea>
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10" style="margin-top: 10px">
          <div class="form-group">
            <label for="exampleInputFile">Mã kích hoạt</label>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">ID</label>
            <input type="text" class="form-control" name="lic_name" value="<?=$lic_name ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Key</label>
            <input type="text" class="form-control" name="lic_key" value="<?=$lic_key ?>">
          </div>
          <div style="font-size: 11px; line-height: 10px; color: #00a65a; margin-top: -5px;">
            <?php
              $check_lic_pa   = lic_web_pa_check_lic ($lic_name, $lic_key);
              $check_lic_pa   = @json_decode($check_lic_pa, true);
              $check_lic_pa_0 = @$check_lic_pa[0];
              $check_lic_pa_1 = @$check_lic_pa[1];
            ?>
            <p style="<?=$check_lic_pa_0 == 0 ? "color: red;" : "" ?>"><?=$check_lic_pa_0 == 0 ? "ID Key không hợp lệ" : "ID Key hợp lệ. " ?><?=$check_lic_pa_1 == 0 ? "" : "Hạn sử dụng đến ".date("d-m-Y", $check_lic_pa_1) ?></p>
          </div>
          <div class="form-group">
            <label>Tên miền phụ <a data-tooltip="Mỗi tên miền 1 dòng !"> </a></label>
            <textarea class="form-control" name="is_key_tenmien_phu" style="min-height: 200px"><?php 
              $check_tm   = DB_que("SELECT * FROM `#_subdomain` ");
              $check_tm   = DB_arr($check_tm);
              foreach ($check_tm as $rtm) {
                echo $rtm['tenbaiviet_vi']."\n";
              }

             ?></textarea>
          </div>
        </div>
      </section>
      <section class="col-lg-12" >
        <div class="box p10" style="margin-top: 10px">
          <div class="form-group">
            <label for="exampleInputFile">Email gửi tin</label>
          </div>
          <div class="form-group">
            <label for="exampleInputFile">IP/Server</label>
            <input type="text" class="form-control" name="em_ip" value="<?=$em_ip ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Email</label>
            <input type="text" class="form-control" name="em_taikhoan" value="<?=$em_taikhoan ?>">
          </div>
          <div class="form-group">
            <label for="exampleInputFile">Mật khẩu</label>
            <input type="text" class="form-control" name="em_pass" value="<?=$em_pass ?>">
          </div>
        </div>
      </section>
      <section class="col-lg-12">
        <div class="box p10" style="margin-top: 10px">
          <div class="form-group" stylw=" margin-bottom: 5px;">
            <label for="exampleInputFile">Code Header</label>
          </div>
          <div class="form-group">
            <label>Chèn trong header</label>
            <textarea class="form-control" name="js_google_anilatic" style="min-height: 200px"><?=$js_google_anilatic ?></textarea>
          </div>
          <div class="form-group">
            <label>Chèn trong body</label>
            <textarea class="form-control" name="js_google_anilatic_body" style="min-height: 200px"><?=$js_google_anilatic_body ?></textarea>
          </div>
        </div>
        <div class="form-group">
          <label>Robots</label>
          <textarea name="robots" id="robots" class="form-control" rows="10" cols="80" style="height: 200px"><?=$robots ?></textarea>
        </div>
      </section>
    </div>
  </section>
  <div class="box-header mb-60">
    <h3 class="box-title box-title-td pull-right">
        <button type="submit" name="capnhat" class="btn btn-primary"><i class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
    </h3>
  </div>
</form>