<?php
$table        = '#_baiviet';
$name_baiviet = "bài viết";
if ($id_step  == 2) $name_baiviet = "sản phẩm";
$id           = isset($_GET['edit']) && is_numeric($_GET['edit']) ? SHOW_text($_GET['edit']) : 0;



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    foreach ($_POST as $key => $value) {
        ${$key}           = $value;
    }

    $catasort   = str_replace(".", "", @$catasort);
    $giatien    = str_replace(",", "", @$giatien);
    $giatien    = str_replace(".", "", @$giatien);
    $giakm      = str_replace(",", "", @$giakm);
    $giakm      = str_replace(".", "", @$giakm);

    $showhi             = isset($_POST["showhi"]) ? "1" : "0";
    $opt_km             = isset($_POST["opt_km"]) ? "1" : "0";

    $ngaydang   = @explode("/", $ngaydang);
    $capnhat    = @explode("/", $capnhat);
    $ngaydang   = @strtotime($ngaydang[2] . "-" . $ngaydang[1] . "-" . $ngaydang[0] . " " . @date("H:i:s", time()));
    $capnhat    = @strtotime($capnhat[2] . "-" . $capnhat[1] . "-" . $capnhat[0] . " " . @date("H:i:s", time()));


    $id_parent_muti          = "";
    if(isset($_POST['id_parent_muti'])) {
        foreach ($_POST['id_parent_muti'] as $val) {
            $id_parent_muti .= $val.",";
        }
        $id_parent_muti      = trim($id_parent_muti,",");
    }
    $tinh_nang = "";
    if(isset($_POST['tinh_nang'])) {
        foreach ($_POST['tinh_nang'] as $val) {
            $tinh_nang .= $val.",";
        }
        $tinh_nang      = trim($tinh_nang,",");
    }
    $diem_con_hang = "";
    if(isset($_POST['diem_con_hang'])) {
        foreach ($_POST['diem_con_hang'] as $val) {
            $diem_con_hang .= $val.",";
        }
        $diem_con_hang      = trim($diem_con_hang,",");
    }

    //luu % kn
    if($giakm != 0) {
        $num_4 = 100 - ($giatien / $giakm * 100);
    }
    //
    foreach ($arr_list_lang as $key => $vl) {
        ${"seo_title_".$key}       = LAY_uutien(@${"seo_title_".$key}, @${"tenbaiviet_".$key});
        ${"seo_description_".$key} = LAY_uutien(@${"seo_description_".$key}, @${"tenbaiviet_".$key}); 
        ${"seo_keywords_".$key}    = LAY_uutien(@${"seo_keywords_".$key}, @${"tenbaiviet_".$key});
    }
    $google_map_new = @stripcslashes($google_map);
    preg_match_all("/src=\"(.*?)\"/", $google_map_new, $google_map_ar); 
    if(@$google_map_ar[1][0] != "") {
        $google_map = $google_map_ar[1][0];
    }
}

if (!empty($_POST)) {
    $seo_name                       = LAY_uutien($seo_name, $tenbaiviet_vi);
    $hinhanh                        = UPLOAD_image("icon", "../" . $duongdantin . "/", time());
    $icon_hover                     = UPLOAD_image("icon_hover", "../" . $duongdantin . "/", time());
    $dowload                        = UPLOAD_file("dowload", "../datafiles/files/", time());

    $data = array();

    foreach ($arr_list_lang as $key => $vl) {
      $data['tags_'.$key]            = @${"tags_".$key};
      $data['noidung_'.$key]         = @${"noidung_".$key};
      $data['tenbaiviet_'.$key]      = @${"tenbaiviet_".$key};
      $data['mota_'.$key]            = @${"mota_".$key};
      $data['seo_title_'.$key]       = @${"seo_title_".$key};
      $data['seo_description_'.$key] = @${"seo_description_".$key};
      $data['seo_keywords_'.$key]    = @${"seo_keywords_".$key};
      $data['thuoc_tinh_1_'.$key]    = @${"thuoc_tinh_1_".$key};
      $data['thuoc_tinh_2_'.$key]    = @${"thuoc_tinh_2_".$key};
      $data['thuoc_tinh_2_'.$key]    = @${"thuoc_tinh_2_".$key};
      $data['thuoc_tinh_3_'.$key]    = @${"thuoc_tinh_3_".$key};

    }


    $data['seo_name']              = @$seo_name;
    $data['id_parent']             = is_numeric(@$id_parent) ? @$id_parent : 0;
    $data['id_parent_muti']        = @$id_parent_muti;
    $data['duongdantin']           = @$duongdantin;
    $data['dowload_text']       = @$dowload_text;
    
    $data['catasort']              = is_numeric(@$catasort) ? @$catasort : 0;
    $data['ngaydang']              = is_numeric(@$ngaydang) ? @$ngaydang : 0;
    $data['capnhat']               = is_numeric(@$capnhat) ? @$capnhat : 0;
    $data['showhi']                = is_numeric(@$showhi) ? @$showhi : 0;



    $data['p1']                    = @$p1;
    $data['p3']                    = @$p3;
    $data['link_video']            = @$link_video;

    $data['num_3']                 = is_numeric(@$num_3) ? @$num_3 : 0;
    $data['num_4']                 = is_numeric(@$num_4) ? @$num_4 : 0;
    $data['step']                  = is_numeric(@$step) ? @$step : 0;
    $data['p2']                    = is_numeric(@$p2) ? @$p2 : 0;


    $data['giatien']               = is_numeric(@$giatien) ? @$giatien : 0;
    $data['giakm']                 = is_numeric(@$giakm) ? @$giakm : 0;
    $data['tinh_nang']             = @$tinh_nang;



    $data['opt_km']                = @$opt_km;
    $data['google_map']            = @$google_map;

    if ($id > 0) {
        $sql_thongtin = DB_que("SELECT * FROM `$table` WHERE `id`='" . $id . "' LIMIT 1");
        $sql_thongtin = DB_arr($sql_thongtin, 1);
    }

    if ($hinhanh != false) {
        $data['icon'] = $hinhanh;
        add_img_admin($thongtin_step['opt1'], @$_REQUEST['anh_sp'], $id, @$sql_thongtin, $duongdantin, $hinhanh, 'icon');
    }
    
    if ($icon_hover != false) {
        $data['icon_hover'] = $icon_hover;
        add_img_admin($thongtin_step['opt1'], @$_REQUEST['anh_sp'], $id, @$sql_thongtin, $duongdantin, $hinhanh, 'icon_hover');
    }

    if ($dowload != false) {
        $data['dowload'] = $dowload;
        if ($id > 0 && is_array($sql_thongtin)) {
            @unlink("../datafiles/files/" . $sql_thongtin["dowload"]);
        }
    }


    if ($id == 0) {
        $data['id_user']               = $_SESSION['luluwebproadmin'];
        //
        $id = ACTION_db($data, $table, 'add', NULL, NULL);
        $_SESSION['show_message_on'] = "Thêm $name_baiviet thành công!";
        // luu anh danh sach
        DB_que("UPDATE `#_baiviet_img` SET `id_parent` = '$id' WHERE `id_parent` = 0 AND  `the_loai` = 0 ", "#_baiviet_img");
        // 
        //
        if($seo_name != "[no_seo_name]"){
            THEM_seoname($id, $seo_name, $table, $step, "0");
        }
        
    }
    else {
        ACTION_db($data, $table, 'update', NULL, "`id` = " . $id);
        $_SESSION['show_message_on'] = "Cập nhật $name_baiviet thành công!";
        if($seo_name != "[no_seo_name]"){
            THEM_seoname($id, $seo_name, $table, $step, "1");
        }
    }
    // dong dau
    if ($hinhanh != false) {
        if($thongtin['dongdau_check'] == 1) {
            dongdau_anh("../".$duongdantin . "/thumb_" . $hinhanh, "#_baiviet", $id);
        }
    }
    
    if ($icon_hover != false) {
        // dong dau
        if($thongtin['dongdau_check'] == 1) {
            dongdau_anh("../".$duongdantin . "/thumb_" . $icon_hover, "#_baiviet", $id);
        }
    }
    // end

    // $tinhnang_arr      = LAY_bv_tinhnang($step);
    // foreach ($tinhnang_arr as $val3) {  
    //     // if($val3['id_parent'] != 1 ) continue;

    //     $id_tn      = $val3['id'];
    //     $cck        = isset($_POST['is_tnchild_'.$id_tn]) ? 1 : 0;

    //     $price      = str_replace(",", "", @$_POST["price_".$id_tn]);
    //     $price      = str_replace(".", "", @$price);

    //     $data       = array();
    //     $data['id_baiviet']         = $id;
    //     $data['id_tinhnang']        = $id_tn;
    //     $data['gia']                = is_numeric($price) ? $price : 0;
    //     // $data['mota_vi']            = @$_POST['mota_".$id_tn.'_vi'];
    //     // $data['mota_en']            = @$_POST['mota_'.$id_tn.'_en'];
    //     $data['id_tinhnang_2']      = 1;
    //     $data['show']               = isset($_POST['is_tnchild_'.$id_tn]) ? 1 : 0;

    //     $check  = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$id_tn'   LIMIT 1");
    //     if ($cck == 1 && !DB_num($check)) {
    //         ACTION_db($data, "#_baiviet_select_tinhnang", 'add', NULL, NULL);
    //     } 
    //     else {
    //         ACTION_db($data, "#_baiviet_select_tinhnang", 'update', NULL, "`id_baiviet` = '$id' AND `id_tinhnang` = '$id_tn'");

    //     }
    // }

    // option thuoc tinh
    // update tinh nang
    if(isset($_POST['tinhnang_arr'])){
        DB_que("UPDATE `#_baiviet_select_tinhnang` SET `showhi` = 0 WHERE `id_baiviet` = '$id' AND `loaihienthi` = 1", "#_baiviet_select_tinhnang");
        foreach ($_POST['tinhnang_arr'] as $key) {
            if($key != 0 && $key != "") {
                $k_arr      = explode('_', $key);
                $k          = $k_arr[0];
                $v          = $k_arr[1];
                $check      = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' AND `id_val` = '$v' LIMIT 1");
                if(!DB_num($check)) {
                    DB_que("INSERT INTO `#_baiviet_select_tinhnang` (`id_baiviet`,`id_tinhnang`,`id_val`, `loaihienthi`, `showhi`) VALUES ('$id', '$k', '$v', 1, 1)", "#_baiviet_select_tinhnang");
                }
                else {
                    DB_que("UPDATE `#_baiviet_select_tinhnang` SET  `showhi` = 1 WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' AND `id_val` = '$v' LIMIT 1", "#_baiviet_select_tinhnang");
                }
            }
        }
    }
    // luu tinh năng input
    $tinhnang_arr_input = LAY_bv_tinhnang($step, 0, "`loai_hienthi` = 0 AND `id_parent` = 0");
    if(count($tinhnang_arr_input)){
        DB_que("UPDATE `#_baiviet_select_tinhnang` SET `showhi` = 0 WHERE `id_baiviet` = '$id' AND `loaihienthi` = 0", "#_baiviet_select_tinhnang");
        foreach ($tinhnang_arr_input as $rtn_input) {
            $data_tn_input                = array();
            $data_tn_input['id_baiviet']  = $id;
            $data_tn_input['id_tinhnang'] = $rtn_input['id'];
            $data_tn_input['loaihienthi'] = 0;
            $data_tn_input['showhi']      = 1;
            $check_add                    = 0;
            foreach ($arr_list_lang as $klang => $vlang) {
                $kvtext = isset($_POST['tinhnang_input_val_'.$klang."_".$rtn_input['id']]) ? $_POST['tinhnang_input_val_'.$klang."_".$rtn_input['id']] : "";
                $data_tn_input['tenbaiviet_'.$klang] = @$kvtext;
                if($kvtext != "") $check_add = 1;
            }

            $check      = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '".$rtn_input['id']."' AND `loaihienthi` = 0 LIMIT 1");
            if ($check_add == 1 && !DB_num($check)) {
                ACTION_db($data_tn_input, "#_baiviet_select_tinhnang", 'add', NULL, NULL);
            } 
            else {
                ACTION_db($data_tn_input, "#_baiviet_select_tinhnang", 'update', NULL, "`id_baiviet` = '$id' AND `id_tinhnang` = '".$rtn_input['id']."' AND `loaihienthi` = 0");
            }
        }
    }
    // 
    // add nhom gia
    if(isset($_POST['nhomgia_arr_id'])){
        DB_que("UPDATE `#_baiviet_select_nhomgia` SET `showhi` = 0 WHERE `id_baiviet` = '$id' ", "#_baiviet_select_nhomgia");
        $nhomgia_arr_id = isset($_POST['nhomgia_arr_id']) ? $_POST['nhomgia_arr_id'] : array();
        $nhomgia_arr    = isset($_POST['nhomgia_arr']) ? $_POST['nhomgia_arr'] : array();
        $gia_min        = 0;
        for ($i=0; $i < count($nhomgia_arr_id); $i++) { 
            $id_gia = $nhomgia_arr_id[$i];
            $vl_gia = str_replace(".", "", $nhomgia_arr[$i]);
            $vl_gia = str_replace(",", "", $vl_gia);
            $vl_gia = is_numeric($vl_gia) ? $vl_gia : 0;

            $gia_min = $gia_min > $vl_gia || $gia_min == 0 ? $vl_gia : $gia_min;

            $check      = DB_que("SELECT * FROM `#_baiviet_select_nhomgia` WHERE `id_baiviet` = '$id' AND `id_nhomgia` = '$id_gia' LIMIT 1");
            if(!DB_num($check)) {
                DB_que("INSERT INTO `#_baiviet_select_nhomgia` (`id_baiviet`,`id_nhomgia`,`id_val`, `showhi`) VALUES ('$id', '$id_gia', '$vl_gia', 1)", "#_baiviet_select_nhomgia");
            }
            else {
                DB_que("UPDATE `#_baiviet_select_nhomgia` SET  `showhi` = 1, `id_val` = '$vl_gia' WHERE `id_baiviet` = '$id' AND `id_nhomgia` = '$id_gia' LIMIT 1", "#_baiviet_select_nhomgia");
            }
        }
        // update gia nho nhat cho sp
        // DB_que("UPDATE `#_baiviet` SET `giatien` = '$gia_min' WHERE `id` = '".$id."' LIMIT 1", "#_baiviet");
        // 
    }
    // 
    
    if(isset($_POST['tinhnang_key_arr'])){
        DB_que("UPDATE `#_baiviet_select_tinhnang` SET `showhi` = 0 WHERE `id_baiviet` = '$id' AND `loaihienthi` = 0", "#_baiviet_select_tinhnang");
        $num_post_tn        = count($_POST['tinhnang_key_arr']);
        $tinhnang_key_arr       = $_POST['tinhnang_key_arr'];
        $tinhnang_arr_input     = $_POST['tinhnang_arr_input'];
        $tinhnang_arr_input_en  = $_POST['tinhnang_arr_input_en'];
        for ($i=0; $i < $num_post_tn; $i++) { 

            if($tinhnang_arr_input[$i] == "" && $tinhnang_arr_input_en[$i] == "") continue;
            $k          = $tinhnang_key_arr[$i];
            $mota_vi    = $tinhnang_arr_input[$i];
            $mota_en    = $tinhnang_arr_input_en[$i];

            $check      = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' LIMIT 1");
            if(!DB_num($check)) {
                DB_que("INSERT INTO `#_baiviet_select_tinhnang` (`id_baiviet`,`id_tinhnang`,`mota_vi`,`mota_en`, `loaihienthi`, `showhi`) VALUES ('$id', '$k', '$mota_vi', '$mota_en', 0, 1)", "#_baiviet_select_tinhnang");
            }
            else {
                DB_que("UPDATE `#_baiviet_select_tinhnang` SET `mota_vi` = '$mota_vi',`mota_en` = '$mota_en', `showhi` = 1 WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' LIMIT 1", "#_baiviet_select_tinhnang");
            }
        }
    }


    // option thuoc tinh
    if(isset($_POST['js_vitri']) && is_numeric($_POST['js_vitri'])){
        $key_update = md5(time());
        for ($i=0; $i <= $_POST['js_vitri']; $i++) { 
            $gia        = isset($_POST['thuoctinh_pri_'.$i]) ? $_POST['thuoctinh_pri_'.$i] : "";
            $phien_ban  = isset($_POST['thuoctinh_name_'.$i]) ? $_POST['thuoctinh_name_'.$i] : "";
            $sort       = isset($_POST['thuoctinh_sort_'.$i]) ? $_POST['thuoctinh_sort_'.$i] : "";

            $gia    = str_replace(",", "", @$gia);
            $gia    = str_replace(".", "", @$gia);
 

            if($gia == "" || $phien_ban == "") continue;
            $data   = array();

            //
            $phien_ban = trim_val($phien_ban);
            $phien_ban = explode(",", $phien_ban);
            $n_phienban = "";
            foreach ($phien_ban as $ke) {
                $ke = explode("_",$ke);
                $ke = $ke[1];
                $n_phienban .= $n_phienban == "" ? $ke : ",".$ke;
            }
            $n_phienban = explode(",",$n_phienban);
            sort($n_phienban);
            $n_phienban = implode(",",$n_phienban);
            //
            $data['id_sp']      = $id;
            $data['phien_ban']  = trim_val($n_phienban);
            $data['catasort']   = $sort;
            $data['gia']        = $gia;
            $data['showhi']     = isset($_POST['thuoctinh_showhi_'.$i]) ? 1 : 0;
            $data['key_update'] = $key_update;

            $check = DB_que("SELECT * FROM `#_baiviet_thuoctinh` WHERE `id_sp` = '$id' AND `catasort` = '$sort' LIMIT 1 ");
            if(DB_num($check)) {
                ACTION_db($data, "#_baiviet_thuoctinh", 'update', NULL, "`id_sp` = '$id' AND `catasort` = '$sort'");
            }
            else {
                ACTION_db($data, "#_baiviet_thuoctinh", 'add', NULL, NULL);
            }

        }
        DB_que("DELETE FROM `#_baiviet_thuoctinh` WHERE `id_sp` = '$id' AND `key_update` <> '$key_update'");
    }
    else {
        DB_que("DELETE FROM `#_baiviet_thuoctinh` WHERE `id_sp` = '$id'");
    }
    //
    // update tinh nang dat hang
    if(isset($_POST['tinhnang_dh'])){
        DB_que("UPDATE `#_baiviet_select_tinhnang` SET `showhi` = 0 WHERE `id_baiviet` = '$id' AND `loaihienthi` = 2");
        foreach ($_POST['tinhnang_dh'] as $key) {
            if($key != 0 && $key != "") {
                $k_arr      = explode('_', $key);
                $k          = $k_arr[0];
                $v          = $k_arr[1];
                $check      = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' AND `id_val` = '".$v."' LIMIT 1");


                $hinhanh = UPLOAD_image("upload_file_".$key, "../" . $duongdantin . "/", time());
                if(!DB_num($check)) {
                    if(!$hinhanh) $hinhanh = "";
                    DB_que("INSERT INTO `#_baiviet_select_tinhnang` (`id_baiviet`,`id_tinhnang`,`id_val`, `showhi`, `duongdantin`, `icon`, `loaihienthi`) VALUES ('$id', '$k', '$v', 1, '$duongdantin', '$hinhanh', 2)");
                }
                else {
                    $iadd  = "";
                    if($hinhanh) {
                        $iadd  = ", `icon` = '$hinhanh' ";
                    }
                    DB_que("UPDATE `#_baiviet_select_tinhnang` SET  `showhi` = 1, `duongdantin` = '$duongdantin' $iadd WHERE `id_baiviet` = '$id' AND `id_tinhnang` = '$k' AND `id_val` = '".$v."' LIMIT 1");
                }
            }
        }
    }
    //
    //

    LOCATION_js($url_page . "&step=" . @$_GET['step'] . "&id_step=" . @$id_step . "&edit=" . $id);
    exit();
    //
}


if ($id > 0) {
    // check phan quyen
    $mo = "";
    if($_SESSION['phanquyen'] != 1){
      $mo .= " AND `id_user` = '".$_SESSION['luluwebproadmin']."' ";
    }
    //
    $sql_se = DB_que("SELECT * FROM `$table` WHERE `id`='" . $id . "' $mo LIMIT 1");
    if(!DB_num($sql_se)) {
        LOCATION_js($url_page."&step=".$step."&id_step=".$id_step);
        exit();
    }
    $sql_se = DB_arr($sql_se, 1);

    foreach ($sql_se as $key => $value) {
        ${$key} = SHOW_text($value);
    }

    $catasort = number_format($catasort, 0, ',', '.');
    $ngaydang = date("d/m/Y", $ngaydang);
    $capnhat  = date("d/m/Y", $capnhat);

    $giatien = number_format($giatien, 0, ',', '.');
    $giakm = number_format($giakm, 0, ',', '.');


    if ($icon != '') {
        $full_icon  = $fullpath."/".$duongdantin."/thumb_".$icon."?v=".$time_dongdau;
    }
    if ($icon_hover != '') {
        $full_icon_hover    = $fullpath."/".$duongdantin."/thumb_".$icon_hover."?v=".$time_dongdau;
    }
} else {
    $id_parent = 0;
    $catasort  = layCatasort($table, '`step` = ' . $step);
    $catasort  = number_format(SHOW_text($catasort), 0, ',', '.');

    $ngaydang   = date("d/m/Y");
    $capnhat    = date('d/m/Y');
    if($id_step == 11){
        $mt_10_vi = date('d/m/Y', strtotime("10 days", time()));
    }
}


if($id > 0) {
    $tinhnang_list  = DB_que("SELECT * FROM `#_baiviet_select_tinhnang` WHERE `id_baiviet` = '$id' AND `showhi` = 1");
    $tinhnang_list  = DB_arr($tinhnang_list);
    $list_arr       = array();
    foreach ($tinhnang_list as $rs) {
        array_push($list_arr, $rs['id_tinhnang']."_".$rs['id_val']);
    }
}
$tinhnang_arr      = LAY_bv_tinhnang($step);
?>
    <section class="content-header">
        <h1><?php if(isset($_SESSION['admin'])){ ?><a style="cursor: pointer;" onclick="AUTO_dich(this)">[NGÔN NGỮ]</a> <a class="js_okkk" style="cursor: pointer;" onclick="OKKK_by_lh()">[UPDATE]</a> <?php } ?>Danh sách <?=  $thongtin_step['tenbaiviet_vi'] ?></h1>
        <ol class="breadcrumb">
            <li><a href="<?= $fullpath_admin ?>"><i class="fa fa-home"></i> Trang chủ</a></li>
            <li class="active">Danh sách <?= $thongtin_step['tenbaiviet_vi'] ?></li>
        </ol>
    </section>
    <form id="form_submit" name="form_submit" action="" method="post" enctype='multipart/form-data'>
        <input type="hidden" name="anh_sp" class="js_anhsp" value="<?=!empty($thongtin_step['size_img']) && $thongtin_step['size_img'] != '' ? $thongtin_step['size_img'] : '' ?>">
        <input type="hidden" name="step" value="<?=$step ?>">
        <input type="hidden" name="id_edit" class="id_edit" value="<?= !empty($id) ? $id : 0 ?>">

        <section class="content form_create">
            <div class="row">
                <section class="col-lg-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h2 class="h2_title">
                                <i class="fa fa-pencil-square-o"></i><?= GETNAME_step($step) ?>
                                > <?= $id > 0 ? 'Cập nhật' : 'Thêm' ?> <?= $thongtin_step['tenbaiviet_vi'] ?>
                            </h2>
                            
                            <h3 class="box-title box-title-td pull-right">
                                <button onclick="return checkSubmit();" type="submit" class="btn btn-primary"><i
                                            class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                                <a href="<?= $url_page ?>&them-moi=true&step=<?= @$_GET['step'] ?>&id_step=<?= @$_GET['id_step'] ?>"
                                   class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                                <a href="<?= $url_page ?>&step=<?= @$_GET['step'] ?>&id_step=<?= @$_GET['id_step'] ?>"
                                   class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
                            </h3>
                        </div>
                        
                        <?php
                        //                        echo $id_step;
                        if (is_file("step/" . $id_step . ".php")) include("step/" . $id_step . ".php"); ?>
                        
                    </div>
                </section>
            </div>
        </section>

        <div class="box-header mb-60">
            <h3 class="box-title box-title-td pull-right">
                <button onclick="return checkSubmit()" type="submit" class="btn btn-primary"><i
                            class="fa fa-floppy-o"></i> <?=glo_lang_admin('Lưu lại') ?></button>
                <a href="<?= $url_page ?>&them-moi=true&step=<?= @$_GET['step'] ?>&id_step=<?= @$_GET['id_step'] ?>"
                   class="btn btn-primary"><i class="fa fa-plus"></i> Thêm mới</a>
                <a href="<?= $url_page ?>&step=<?= @$_GET['step'] ?>&id_step=<?= @$_GET['id_step'] ?>"
                   class="btn btn-primary"><i class="fa fa-sign-out"></i> Thoát</a>
            </h3>
        </div>
    </form>


<script>
    function checkSubmit() {
        if ($("#tenbaiviet_vi").val().trim() == '') {
            alert("Vui lòng nhập tiêu đề");
            $("#tenbaiviet_vi").focus();
            return false;
        }
        if ($(".cls_giatien_f").length > 0 && $(".cls_giatien_f").val() < 0) {
            alert("Giá bán không được phép âm. Vui lòng kiểm tra lại!");
            $(".cls_giatien_f").focus();
            return false;
        }
        if ($(".cls_giatien_khuyenmai_f").length > 0 && $(".cls_giatien_khuyenmai_f").val() != 0) {
            var gia_ban = parseInt($(".cls_giatien_f").val().replace(/\./g, ""));
            var gia_km = parseInt($(".cls_giatien_khuyenmai_f").val().replace(/\./g, ""));

            if (gia_km < gia_ban) {
                alert("Giá so sánh không được nhỏ hơn giá bán. Vui lòng kiểm tra lại!");
                $(".cls_giatien_khuyenmai_f").focus();
                return false;
            }

        }
        if($(".time_js_date_1").length > 0 && $(".time_js_date_2").length > 0){
            var time_1 = $(".time_js_date_1").val();
            var time_2 = $(".time_js_date_2").val();
                time_1 = time_1.split("/");
                time_2 = time_2.split("/");
                time_1 = new Date(time_1[2], time_1[1] - 1, time_1[0], 23, 59, 0).getTime()/1000;
                time_2 = new Date(time_2[2], time_2[1] - 1, time_2[0], 23, 59, 0).getTime()/1000;
                if(time_1 > time_2) {
                    alert("Ngày khởi hành không được lớn hơn ngày kết thúc!");
                    $(".time_js_date_1").focus();
                    return false;
                }
        }
        return true;
    }
</script>
