<?php

  if(isset($_GET['them-moi']) || (isset($_GET['edit']) && is_numeric($_GET['edit']))){
      include "module-dong-dau-hinh-anh-add.php";
  }
  else{
    $sql_se             = DB_que("SELECT * FROM `#_seo` LIMIT 1");
    $sql_se             = DB_arr($sql_se, 1);
    foreach ($sql_se as $key => $value) {
      ${$key} = Show_text($value);
    }


    $mo      = '';
    $uri     = '';
    $numview = 100;
    
    $pz      = 0;
    $pzz     = 0;

    if(isset($_GET['pz'])){
      $pz       = $_GET['pz'];
      if($pz    == "" || $pz == 0)  $pzz = 0;
      else $pzz = $pz * $numview;
    }


    $s_trangthai = isset($_GET['trang-thai']) ? $_GET['trang-thai'] : 0;
    if($s_trangthai == 1 || $s_trangthai == 2) {
      if($s_trangthai == 1) $mo .= " AND `is_dongdau` = 0";
      if($s_trangthai == 2) $mo .= " AND `is_dongdau` = 1";
      $uri .= '&trang-thai='.$s_trangthai;
    }
    $sql           = DB_que("SELECT * FROM `#_baiviet` WHERE `step`='".$dongdau_step."' $mo ORDER BY `catasort` DESC LIMIT $pzz,$numview");
    $sql_num       = DB_que("SELECT * FROM `#_baiviet` WHERE `step`='".$dongdau_step."' $mo");
    
    $numlist       = @DB_num($sql_num);
    $numshow       = ceil($numlist/$numview);
    
    
    $name_title    = " Quản lý sản phẩm đóng dấu";
    $thongtin_step = DB_que("SELECT * FROM `#_step` WHERE `id` = '$dongdau_step' LIMIT 1");
    $thongtin_step = DB_arr($thongtin_step, 1);
?>
<style>
  .dv-dongdau label { float: left; margin-left: 10px; font-weight: 500; }
  .dv-dongdau label input { float: left; margin: 0 12px 0 0; width: 16px; height: 16px; }
  .lb_tienhanh img { height: 15px; margin: 0 5px 4px 0; line-height: 0; display: inline-block; }
  .lb_tienhanh { margin: 9px 0 0 !important; margin-left: 5px !important; line-height: 16px; color: #717171; font-weight: 500; display: none; }
  .lb_tienhanh img { display: none; }
  .lb_tienhanh.acti img { display: inline-block; }
</style>
<section class="content-header">
    <h1><?php if(isset($_SESSION['admin'])){ ?><a onclick="LOAD_sort()" class="cur load_okkk">[SORT]</a> <?php } ?> <?=$name_title ?></h1> 
    <ol class="breadcrumb">
        <li><a href="<?=$fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
        <li class="active"><?=$name_title ?></li>
    </ol>
</section>
<form id="form_submit" name="form_submit" action="" method="post" enctype='multipart/form-data'>
    <section class="content">
        <div class="row">
            <section class="col-lg-12">
                <div class="box">
                    <div class="box-header">
                      <div class="box-tools">
                          <div class="dv-hd-locsds">
                            <div class="form-group">
                              <select name='docid' class="js_trangthai_js form-control" onchange='SEARCH_jsstep()' style="min-width: 150px">
                                  <option selected="selected" value="0">Tất cả hình ảnh</option>
                                  <option value="1" <?=LAY_selected(1, $s_trangthai) ?>>Chưa đóng dấu</option>
                                  <option value="2" <?=LAY_selected(2, $s_trangthai) ?>>Đã đóng dấu</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label class="lb_tienhanh">
                                <img src="images/loading2.gif" alt=""> <span class="dth">Đang tiến hành</span> <span class="bg">0</span> / <span class="end">0</span>
                              </label>
                            </div>
                            
                          </div>
                        </div>
                        <h3 class="box-title box-title-td pull-right">
                          <button type="button" name="addgiatri" class="btn btn-primary" onclick="return check_dongdau('<?=$thongtin_step['size_img'] ?>', 0)"><i class="fa fa-floppy-o"></i> Lưu lại </button>
                        </h3>
                    </div>
                    <div class="dv-dongdau">
                      <label>
                        <input type='radio' value="0" name="dongdau" class='check_chon_dd minimal' checked="checked"> Mặc định
                      </label>
                      <label>
                        <input type='radio' value="1" name="dongdau" class='check_chon_dd minimal'> Bỏ đống dấu SP chọn
                      </label>
                      <label>
                        <input type='radio' value="2" name="dongdau" class='check_chon_dd minimal'> Bỏ đống dấu tất cả SP
                      </label>
                      <label>
                        <input type='radio' value="3" name="dongdau" class='check_chon_dd minimal'> Đóng dấu SP chưa đóng dấu
                      </label>
                      <label>
                        <input type='radio' value="4" name="dongdau" class='check_chon_dd minimal'> Đóng dấu tất cả SP
                      </label>
                      <div class="clr"></div>
                    </div>
                    <div class="box-body table-responsive no-padding table-danhsach-cont">
                      <table class="table table-hover table-danhsach">
                        <tbody>
                          <tr>
                            
                            <th class="w80 text-center">STT</th>
                            <th>Tiêu đề</th>
                            <th class="w120 text-center">Hình ảnh</th>
                            <th class="w120 text-center">Đóng dấu</th>
                            <th class="w120 text-center">Chọn Đóng dấu</th>
                          </tr>
                          <?php
                            $cl                 = 0;
                            $token              = GET_token();
                            $sql                = DB_arr($sql);
                            foreach ($sql as $rows) {
                              $cl++;

                              $ida              = $rows['id'];
                              foreach ($rows as $key => $value) {
                                ${$key}         = SHOW_text($value);
                              }
                              $catasort           = number_format($catasort,0,',','.');

 
                          ?>
                          <tr>
                            
                            <td class="text-center">
                              <?=$catasort ?>
                            </td>
                            
                            <td>
                              <div class="name">
                                <a><?=$tenbaiviet_vi ?></a>
                                <p class="p_lang_en"><?=$tenbaiviet_en ?></p>
                                <p class="p_lang_en cls_js_dongdau_load_<?=$rows['id'] ?>" style="color: #ec5f32; display: none"><img src="images/loading8.gif" style="height: 8px;"> Đang tiến hành đóng dấu...</p>
                              </div>
                            </td>
                            <td class="text-center">
                              <img class='img_show_ds cls_js_dongdau_img_<?=$rows['id'] ?>' src='<?=$fullpath."/". $duongdantin."/thumb_". $icon."?v=".time() ?>' style="height: 100px;">
                            </td>
                            <td class="text-center">
                              <div id="cus" class="cus_menu">
                                <label><input type='checkbox' class='minimal' value='1' <?=LAY_checked($is_dongdau, 1)?>></label>
                                </div>
                            </td>
                            <td class="text-center">
                              <label><input type='checkbox' class='minimal cls_js_dongdau'  value='<?=$rows['id'] ?>'></label>
                            </td>
                          </tr>
                        <?php  } ?> 
                        </tbody>
                      </table>
                      <input type='hidden' value='<?=$cl?>' name='maxvalu'>
                    </div>
                    <div class="box-header">
                      <div class="paging_simple_numbers">
                        <ul class="pagination">
                          <?php
                            PHANTRANG_admin($numshow, $url_page, $pz, $uri);
                          ?>
                        </ul>
                      </div>
                      <h3 class="box-title box-title-td pull-right">
                      </h3>
                    </div>
                </div>
            </section>
        </div>
    </section>
</form>
<script>
  $(".cls_js_dongdau").click(function(){
    if($(this).is(":checked")) $(this).addClass("cls_chon_dongdau");
    else $(this).removeClass("cls_chon_dongdau");
  });

  $(".check_chon_dd").click(function(){
    var valclick = $(this).val();
    $(".cls_js_dongdau").removeClass("cls_bodong_dautatca_sp");
    $(".cls_js_dongdau").removeClass("cls_dong_dautatca_sp_chuadongdau");
    $(".cls_js_dongdau").removeClass("cls_dong_dautatca_sp");
    if(valclick == 2) $(".cls_js_dongdau").addClass("cls_bodong_dautatca_sp");
    if(valclick == 3) $(".cls_js_dongdau").addClass("cls_dong_dautatca_sp_chuadongdau");
    if(valclick == 4) $(".cls_js_dongdau").addClass("cls_dong_dautatca_sp");
  });

  
  function check_dongdau(size_img, bg){
    var loai = $(".check_chon_dd:checked").val();
    if(bg == 0) {
      $(".lb_tienhanh").addClass("acti");
      $(".lb_tienhanh").show();
      $(".lb_tienhanh .bg").html(0);
      $(".lb_tienhanh .dth").html("Đang tiến hành");
      if(loai == 0 || loai == 1) $(".lb_tienhanh .end").html($(".cls_js_dongdau:checked").length);
      else if(loai == 2) $(".lb_tienhanh .end").html($(".cls_bodong_dautatca_sp").length);
      else if(loai == 3) $(".lb_tienhanh .end").html($(".cls_dong_dautatca_sp_chuadongdau").length);
      else if(loai == 4) $(".lb_tienhanh .end").html($(".cls_dong_dautatca_sp").length);
    }
    // Bỏ đống dấu tất cả SP
    if($(".cls_js_dongdau").hasClass("cls_bodong_dautatca_sp")){
      if($(".cls_bodong_dautatca_sp").length) {
        var id = $(".cls_bodong_dautatca_sp").eq(0).val();
        $(".cls_js_dongdau_load_"+id).show();
        check_dongdau_run(id , loai, size_img, "cls_bodong_dautatca_sp");
      }
      return false;
    }
    // Đóng dấu SP chưa đóng dấu
    if($(".cls_js_dongdau").hasClass("cls_dong_dautatca_sp_chuadongdau")){
      if($(".cls_dong_dautatca_sp_chuadongdau").length) {
        var id = $(".cls_dong_dautatca_sp_chuadongdau").eq(0).val();
        $(".cls_js_dongdau_load_"+id).show();
        check_dongdau_run(id , loai, size_img, "cls_dong_dautatca_sp_chuadongdau");
      }
      return false;
    }
    // Đóng dấu tất cả SP
    if($(".cls_js_dongdau").hasClass("cls_dong_dautatca_sp")){
      if($(".cls_dong_dautatca_sp").length) {
        var id = $(".cls_dong_dautatca_sp").eq(0).val();
        $(".cls_js_dongdau_load_"+id).show();
        check_dongdau_run(id , loai, size_img, "cls_dong_dautatca_sp");
      }
      return false;
    }
    // 

    if($(".cls_chon_dongdau").length) {
      if($(".cls_chon_dongdau").eq(0).is(":checked")) {
        var id = $(".cls_chon_dongdau").eq(0).val();
        $(".cls_js_dongdau_load_"+id).show();
        check_dongdau_run(id , loai, size_img, "cls_chon_dongdau");

      }
      else {
        var xxx = parseInt($(".lb_tienhanh .bg").html());
        xxx++;
        $(".lb_tienhanh .bg").html(xxx);
        $(".cls_js_dongdau").eq(0).removeClass("cls_js_dongdau");
        check_dongdau(size_img, 1);
      }
    }
    $(".check_chon_dd").eq(0).prop('checked', true); 
    $(".lb_tienhanh").removeClass("acti");
    $(".lb_tienhanh .dth").html("Đã tiến hành");
  }

  function check_dongdau_run(id , loai, size_img, cls_remove ){
    var xxx = parseInt($(".lb_tienhanh .bg").html());
    xxx++;
    $(".lb_tienhanh .bg").html(xxx);

    $.ajax({
          type: "POST",
          url: "index.php",
          data: {
              "id": id,
              "loai": loai,
              "size_img": size_img,
              "ajax_action": "check_dongdau"
          },
          success: function(data) {
            console.log(data);
            if(data == 0) alert("Chưa upload ảnh đóng dấu");
            else {
              $(".cls_js_dongdau_load_"+id).hide();
              $("."+cls_remove).eq(0).prop('checked', false); 
              $("."+cls_remove).eq(0).removeClass(cls_remove);
              $(".cls_js_dongdau_img_"+id).attr("src", data);
              check_dongdau(size_img, 1);
            }
          }
      });
  }

  function SEARCH_jsstep() {
      var url              = "";
      if($(".js_trangthai_js").length > 0){
        var js_trangthai_js  = $(".js_trangthai_js").val().trim();
        if(js_trangthai_js != 0) url += "&trang-thai="+js_trangthai_js;
      }
      window.location.href = "<?=$url_page ?>"+url;
  }
</script>
<?php } ?>