<?php 
	$sql_se             = DB_que("SELECT * FROM `#_seo` LIMIT 1");
	$sql_se             = DB_arr($sql_se, 1);
	$favico = "../".$sql_se['duongdantin']."/".$sql_se['favico'];
	// tao capchar
	if (isset($_POST['ajax_action']) && $_POST['ajax_action'] == "get_ajax_capcha") {
		echo md5(time());
		exit();
	} 
	//
	
	if (!empty($_POST['apos']) && $_POST['apos'] == "check_timkiem_ajax") {
		$key_timkiem 	= isset($_POST['key_timkiem']) ? $_POST['key_timkiem'] : "";
		$key_step 		= isset($_POST['key_step']) ? $_POST['key_step'] : 0;

		$timkiem = DB_que("SELECT `tenbaiviet_vi`, `id` FROM `#_baiviet` WHERE `showhi` = 1 AND `step` = '$key_step' AND `tenbaiviet_vi` LIKE '%".$key_timkiem."%' ORDER BY `catasort` DESC");
		$timkiem = DB_arr($timkiem);


		foreach ($timkiem as $rows) {
			echo '<li><a class="cur" onclick="LOAD_data_timkiem('.$rows['id'].',\''.$rows['tenbaiviet_vi'].'\')">'.str_replace($key_timkiem, "<b>".$key_timkiem."</b>", $rows['tenbaiviet_vi']).'</a></li>';
		}

		exit();
	}
	// /tim sp
	if (!empty($_POST['apos']) && $_POST['apos'] == "js_timsanpham") {
		$key 	= isset($_POST['key']) ? $_POST['key'] : "";
		if($key == '') exit();
		$baiviet = LAY_baiviet(1,0,"`tenbaiviet_vi` LIKE '%$key%'");
		foreach ($baiviet as $rows) {
			echo '<li> <a class="cur" onclick="js_xoa_chon(this)">[Xóa]</a> '.SHOW_text($rows['tenbaiviet_vi']).' <input type="hidden" name="spchon[]" value="'.$rows['id'].'"> <a class="cur add" onclick="js_add_chon(this)">[Thêm sản phẩm]</a></li>';
		}
		exit();
	}
	// 
	// load anh
	if (!empty($_POST['ajax_action']) && $_POST['ajax_action'] == "load_danh_sach_upload") {
		$id_edit 	= isset($_POST['id_edit']) ? $_POST['id_edit'] : 0;
		$theloai 	= isset($_POST['theloai']) ? $_POST['theloai'] : 0;

		$list_hinhcon = DB_fet("  * "," `#_baiviet_img` "," `id_parent` = '".$id_edit."' AND `the_loai` = '$theloai' "," `sort` ASC, `id` ASC", "","arr");
		foreach ($list_hinhcon as $r_img) { 
			echo '<div class="dv_hinhanh_con_upload dv_hinhanh_con dv-anh-chl dv_hinhanh_con_'.$r_img['id'].'"><a class="cur" onclick="remove_images_js(this, '.$r_img['id'].')"><img src="images/x_icon.svg" alt=""></a><img src="'.checkImage($fullpath, $r_img['icon'], $r_img['duongdantin']).'"><input class="v1" value="'.$r_img['sort'].'" class="box_input" placeholder="Nhập STT" onchange="UPDATE_colum(this, \''.$r_img['id'].'\', \'sort\',\'#_baiviet_img\')"><input class="v2" value="'.SHOW_text($r_img['tenbaiviet_vi']).'" placeholder="Nhập mô tả (vi)..." onchange="UPDATE_colum(this, \''.$r_img['id'].'\', \'tenbaiviet_vi\',\'#_baiviet_img\')"><input class="v3" value="'.SHOW_text($r_img['tenbaiviet_en']).'" placeholder="Nhập mô tả (en)..." onchange="UPDATE_colum(this,  \''.$r_img['id'].'\', \'tenbaiviet_en\',\'#_baiviet_img\')">
		    </div>';
		}
		exit();
	}
	// dong dau anh
	if (!empty($_POST['ajax_action']) && $_POST['ajax_action'] == "check_dongdau") {
		$id             = isset($_POST['id']) ? $_POST['id'] : 0;
		$loai           = isset($_POST['loai']) ? $_POST['loai'] : 0;
		$size_img       = isset($_POST['size_img']) ? $_POST['size_img'] : "400x400";
		
		$dongdau_step   = $thongtin['dongdau_step'];
		$dongdau_img    = $thongtin['dongdau_img'];
		if($dongdau_img == "") {
			echo 0; exit();
		}
		$baiviet = LAY_baiviet($dongdau_step, 1, "`id` = '$id'");
		if(!count($baiviet)) {
			echo 1;
			exit();
		}
		$baiviet       = reset($baiviet);
		$anh_sp        = explode("x", $size_img);
		$wid           = $anh_sp[0];
		$hig           = $anh_sp[1];

		
		$icon_bv       = "../".$baiviet['duongdantin']."/".$baiviet['icon'];
		$icon_bv_thmb  = "../".$baiviet['duongdantin']."/thumb_".$baiviet['icon'];
		

		if($loai == 3 && $baiviet['is_dongdau'] == 1) {
			echo $icon_bv_thmb."?v=".time();
			exit();
		}

		TAO_anhthumb_new($icon_bv, $icon_bv_thmb, $wid, $hig);
		// tao ảnh thumb child
		$check_sort = DB_que("SELECT * FROM `#_baiviet_img` WHERE `id_parent` = '$id' ORDER BY `id` DESC");
		$check_sort = DB_arr($check_sort);
		foreach ($check_sort as $rows) {
			TAO_anhthumb_new("../".$rows['duongdantin']."/".$rows['icon'], "../".$rows['duongdantin']."/thumb_".$rows['icon'], $wid, $hig);
		}
		// 
		if($loai != 1 && $loai != 2) {
			dongdau_anh($icon_bv_thmb, "#_baiviet", $id);
			// dong dau chi tiet anh
			foreach ($check_sort as $rows) {
				dongdau_anh("../".$rows['duongdantin']."/thumb_".$rows['icon'], "#_baiviet_img", $rows['id']);
			}
			// 
		}
		else {
			DB_que("UPDATE `#_baiviet` SET `is_dongdau` = 0,`time_dongdau` = '".time()."' WHERE `id` = '$id' LIMIT 1");
			DB_que("UPDATE `#_baiviet_img` SET `is_dongdau` = 0,`time_dongdau` = '".time()."' WHERE `id` = '$id' LIMIT 1");
		}

		echo $icon_bv_thmb."?v=".time();
		
		XOA_all_file('../datafiles/cache');
		exit();
	}
	if (!empty($_POST['ajax_action']) && $_POST['ajax_action'] == "update_anh_sort_run") {
		$id 	= isset($_POST['id']) ? $_POST['id'] : 0;
		$sort 	= isset($_POST['sort']) ? $_POST['sort'] : 0;

		DB_que("UPDATE `#_baiviet_img` SET `sort` = '$sort'   WHERE `id` = '$id' LIMIT 1");

		exit();
	}
	//dang anhr
	if (!empty($_POST['apos']) && $_POST['apos'] == "send_img_bs64ajax") {
		// $data 		= isset($_POST['img']) ? $_POST['img'] : "";
		$id_edit 	= isset($_POST['id_edit']) ? $_POST['id_edit'] : 0;
		$the_loai 	= isset($_POST['the_loai']) ? $_POST['the_loai'] : 0;
		$js_anhsp 	= isset($_POST['js_anhsp']) ? $_POST['js_anhsp'] : "";
		$hinhanh 	= isset($_POST['isname']) ? time() . "-" . $_POST['isname'] : time();


		$duongdantin  = "datafiles";
		$uploaddir    = "../".$duongdantin."/";

		$hinhanh = UPLOAD_image("img", $uploaddir, time());

		if($js_anhsp != "") {
			$js_anhsp = explode("x", $js_anhsp);
			TAO_anhthumb_new($uploaddir . $hinhanh, $uploaddir . "thumb_" . $hinhanh, $js_anhsp[0], $js_anhsp[1]);
		}
		else {
			TAO_anhthumb_new($uploaddir . $hinhanh, $uploaddir . "thumb_" . $hinhanh, 300, 300);
		}

		

		$check_sort = DB_que("SELECT `sort` FROM `#_baiviet_img` WHERE `id_parent` = '$id_edit' AND `the_loai` = '$the_loai' ORDER BY `id` DESC LIMIT 1");

		$sort 		= 0;
		if(DB_num($check_sort)) {
			$check_sort = DB_arr($check_sort, 1);
			$sort 	= $check_sort["sort"] + 1;
		}
		$data 		= array();
		$data['id_parent']    = $id_edit;
		$data['icon']         = $hinhanh;
		$data['duongdantin']  = $duongdantin;
		$data['the_loai']  	  = $the_loai;
		$data['sort']  	  	  = $sort;

		$id = ACTION_db($data, '#_baiviet_img', 'add', NULL, NULL);

		// auto dong dau
		global $thongtin;
		if($thongtin['dongdau_check'] == 1) {
			dongdau_anh($uploaddir . "thumb_" . $hinhanh, "#_baiviet_img", $id);
		}
		// 

		echo '<img src="../' . $duongdantin . "/thumb_" . $hinhanh . '" class="img"> <a class="cur jaax_sort_data" dataid="'.$id.'"  onclick="remove_images_js(this, ' . $id . ')">X</a>';
		exit();
	}
	// 
	// xoa anh img_ajjax_
	if (!empty($_POST['apos']) && $_POST['apos'] == "xoa_img_bs64ajax") {
		$id = isset($_POST['id']) ? $_POST['id'] : 0;
		$id_edit = isset($_POST['id_edit']) ? $_POST['id_edit'] : 0;
 
		if ($id > 0) {
		    $wh = "AND `id` = '$id'";
		} else {
		    $wh = "AND (`id_parent` = '$id_edit' OR `id_parent` = 0)";
		}
		$check_sort = DB_que("SELECT * FROM `#_baiviet_img` WHERE 1 $wh ORDER BY `id` DESC");
		$check_sort = DB_arr($check_sort);

		foreach ($check_sort as $rows) {
		    @unlink("../".$rows['duongdantin'] . "/" . $rows['icon']);
		    @unlink("../".$rows['duongdantin'] . "/thumb_" . $rows['icon']);
		}
		DB_que("DELETE FROM `#_baiviet_img` WHERE 1 $wh ORDER BY `id` DESC", "#_baiviet_img");
		exit();
	}
	if(isset($_GET['excel-order'])){
		include 'export_excel_order.php';
		exit();
	}
	// /check notes_header_info(
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "check_noti_end"){ 
		
		$action 	= isset($_POST['action']) ? $_POST['action'] : ""; 
		$step 		= isset($_POST['step']) ? $_POST['step'] : 0; 
		$tongso = 0;
        $num_lh = 0;
        $num_bl = 0;
        $num_dd = 0;
        $num_dhm = 0;
        $num_tvm = 0;

        $glo_quyen = 1;
        if(!isset($_SESSION['phanquyen']) || $_SESSION['phanquyen'] != 1){
		    $glo_quyen = DB_fet("*", "#_module_nhomtaikhoan", "`id` = '".$_SESSION['phanquyen']."'", "`sort` ASC, `id` ASC");
		    $glo_quyen = DB_arr($glo_quyen, 1);
		    $glo_quyen = $glo_quyen['phan_quyen'];
    		$glo_quyen = json_decode($glo_quyen, true);
		}

        if($action != "khach-hang-lien-he") {
        	if(is_array($glo_quyen)){
				$xem = !empty($glo_quyen['khach-hang-lien-he']['xem']) ? $glo_quyen['khach-hang-lien-he']['xem'] : 0;
			}
			else $xem = 1;

			if($xem == 1) {
				$num_lh = DB_que("SELECT `id` FROM `#_form_lienhe` WHERE `is_nuti` = 0 ");
          		$num_lh = DB_num($num_lh);
			}
        }
        else {
          	DB_que("UPDATE `#_form_lienhe` SET `is_nuti` = 1 WHERE `is_nuti` = 0 ", "#_form_lienhe");
        }

        if($action != "danh-sach-don-hang") {
          	if(is_array($glo_quyen)){
				$xem = !empty($glo_quyen['danh-sach-don-hang']['xem']) ? $glo_quyen['danh-sach-don-hang']['xem'] : 0;
			}
			else $xem = 1;

			if($xem == 1) {
				$num_dhm = DB_que("SELECT `id` FROM `#_order` WHERE  `is_nuti` = 0 ");
          		$num_dhm = DB_num($num_dhm);
			}
        }
        else {
          DB_que("UPDATE `#_order` SET `is_nuti` = 1 WHERE `is_nuti` = 0 ","#_order");
        }



        $tongso = $num_lh + $num_bl + $num_dd + $num_dhm ;
        $text_v = "";
        if($num_lh) {
        	$text_v .= '<li><a href="?module=quan-ly-website&action=khach-hang-lien-he">Khách hàng liên hệ <span>'.$num_lh.'</span></a></li>';
        } 

        if($num_dhm) { 
        	$text_v .= '<li><a href="?module=quan-ly-don-hang&action=danh-sach-don-hang">Đơn hàng mới <span>'.$num_dhm.'</a></li>';
        } 
 
 		$return = array("text" => $text_v, "tongso" => $tongso);
 		echo json_encode($return);
		exit();
	}
	// eend
	function LUU_anh_bs($imageData, $folder, $fileName, $folder_thumb, $wid, $hig, $anh_thumb = ''){
		list($type, $imageData) = explode(';', $imageData);
	    list(,$extension) 		= explode('/',$type);
	    list(,$imageData)     	= explode(',', $imageData);
	    if($fileName == "") {
	    	$fileName 	= uniqid().'.'.$extension;
	    } 
	    else {
	    	$fileName 	= time().'-'.$fileName;
	    }
	    $imageData 	= base64_decode($imageData);
	    file_put_contents($folder.$fileName, $imageData);

	    $check 		= getimagesize($folder . $fileName);
	    $imgsize 	= filesize($folder . $fileName) / 1024 / 1024;
	    if(is_array($check) && $imgsize <= 1) {
	    // TAO_anhthumb($folder . $fileName, $folder_thumb . $fileName, $wid, $hig, $anh_thumb);
	    	return $fileName;
	    }

	    @unlink($folder . $fileName);
	    return false;
	}
	
	include _source."optime_img.php";
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "compress_img"){  
	    $data_comp    = isset($_POST['data_comp']) ? $_POST['data_comp'] : "";
	    $img_comp   = isset($_POST['img_comp']) ? $_POST['img_comp'] : "";
	    if($data_comp == '' || $img_comp == '') exit();
	      
	    $img_comp_out = explode("/", $img_comp);
 
	    $img_comp_out = end($img_comp_out);
	    $img_comp_out = str_replace($img_comp_out, "", $img_comp)."__".$img_comp_out;
	    // echo ($img_comp_out);
	    // 
 
	    $list_key 	= "5d3sXXzcKqP0vPndQS2bLdPHLZ2hMy0n,RL2X1hxfM3yQJJWRDbV3s1FHj3VnHrZj,B7H9HyhVkVnHgycqMKgbpJ7KWz1QHP1f,MsSyHrSJj5fMJgl9KRvr38dkSqPYJWdz,2QVtKb8T04tpYS3y6769V1blwps5tYS9,vMZDljmXpbjlxFjmFF4yVJyhrRN3YvZb,5qspfsvDl4ZQxpw9CyKtPddGjNYgsqHm,kSDcPpc1lYy0KWWG3FpmRyxKBzfB338F,MG99Xh6r3HQrJ2TZzLCDfgqGmQLX7Gtv,pYHy0WBwgwQc8w8k9nTyWXYPfwsKX87X,3N1t4yQyMGbbJbFqKDFtrNP5SDrhPZc8,wvTC52qSknmk21X7hHnJYryzF8LFhdDG,g25K99JHJzTcKngnZPb8ZtM9Txk3ccX4,NwTskqvkyVV6HPgtdn4zfjCrGlTCRDsf,MrLynmfKJFySRSvTVRK2dk8hWlsXMS9w,10RYmNHNpLZbMl0s9Nfyx0Tgx5ZC9nNV,wKsdwLpgvFR97p0VpbQMv5DZGB5gChYT,3XSBgGXCdxvXdGPTYXByNX1dnyG8d9xN,6BXzY9TV7Rn10x0KXb9nHPnDXNjkMZBx,GstD14mfk559MlxzY5nfncNb3bpNsdb4";
 

	    if(!isset($_SESSION['list_key_img_otime'])) {
	    	$_SESSION['list_key_img_otime'] = explode(",", $list_key);
	    }
		$list_key_count = count($_SESSION['list_key_img_otime']);

	    $i 			= 0;
	    if(empty($_SESSION['list_key_img_otime'][0])) {
	    	echo "Key not full 1!";
    		unset($_SESSION['list_key_img_otime']);
    		exit();
    	}
    	else {
    		$key 		= $_SESSION['list_key_img_otime'][0];
    	}
	    
	    $return 	= opt_images($img_comp, $img_comp, $key);
	    while (!empty($return['error']) && $i < $list_key_count) {
	    	$i ++;
	    	if(!empty($_SESSION['list_key_img_otime'][0])) {
	    		unset($_SESSION['list_key_img_otime'][0]);
	    		$_SESSION['list_key_img_otime'] = array_values($_SESSION['list_key_img_otime']);
	    		// print_r($_SESSION['list_key_img_otime']);
	    	}
	    	else {
	    		echo "Key not full 2!";
	    		exit();
	    	}
	    	if(!empty($_SESSION['list_key_img_otime'][0])) {
	    		$key 		= $_SESSION['list_key_img_otime'][0];
	    	}
	    	else {
	    		echo "Key not full 3!";
	    		// print_r($_SESSION['list_key_img_otime']);
	    		exit();
	    	}
			
	    	// $return = opt_images($img_comp, $img_comp_out, $key);
	    	$return = opt_images($img_comp, $img_comp, $key);
	    }

	    if(is_array($return) && empty($return['error'])) echo 1;
	    else echo 0;
	    exit();
	  }

	if(isset($_POST['ajax_action']) && $_POST['ajax_action']  == 'update_colum') {
		//phan quyen
		$check_post_phanquyen = "edit";
		include _source."phan_quyen.php";
		//
      $id       = isset($_POST['id']) ? $_POST['id'] : 0;
      $check    = isset($_POST['check']) ? $_POST['check'] : 0;
      $col      = isset($_POST['col']) ? $_POST['col'] : 0;
      $table    = isset($_POST['table']) ? $_POST['table'] : 0;
      DB_que("UPDATE `$table` SET `".$col."` = '$check' WHERE `id` = '$id' LIMIT 1","$table");
      echo "1";
      exit();
    }
    if(isset($_POST['ajax_action']) && $_POST['ajax_action']  == 'update_colum_change') {
    	//phan quyen
		$check_post_phanquyen = "edit";
		include _source."phan_quyen.php";
		//
      $id       = isset($_POST['id']) ? $_POST['id'] : 0;
      $val    	= isset($_POST['val']) ? $_POST['val'] : "";
      $col      = isset($_POST['col']) ? $_POST['col'] : 0;
      $table    = isset($_POST['table']) ? $_POST['table'] : 0;

      $val_new  = str_replace(".", "", $val);
      // $val_new  = str_replace(",", "", $val_new);

      if(is_numeric($val_new)){
      	$val = $val_new;
      }

      DB_que("UPDATE `$table` SET `".$col."` = '$val' WHERE `id` = '$id' LIMIT 1",$table);
      echo "1";
      exit();
    }
    
	if(isset($_GET['excel-lh'])) {
		include 'export_excel_contac.php';
		exit();
	}
	//language
	//
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "get_language"){	
		include 'trans/index.php';
		exit();
	}
	//check sp trong kho
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "check_sp_trong_kho"){
		$id 		= $_POST['id'];
		$list_sp 	= DB_que("SELECT `nkdt`.`id` as `id`, `nkdt`.`ma_sp` as `ma_sp`, `nk`.`tenbaiviet_vi` as `tenbaiviet_vi` FROM `#_quanly_kho_detail` `nkdt`, `#_quanly_kho` `nk` 
			WHERE `nkdt`.`id_parent` = `nk`.`id` 
			AND `nkdt`.`id_xuat_kho` = 0 
			AND `nkdt`.`id_sp` = '$id' 
			ORDER BY `nk`.`id` ASC
			"); 
		if(!DB_num($list_sp)) {
			echo "Hiện trong kho không có sản phẩm nào!";
			exit();
		}

		$list_sp = DB_arr($list_sp);
		foreach ($list_sp as $rows) {
			echo '<label><input type="checkbox" value='.$rows['id'].' name="spip_'.$id.'[]">'.$rows['ma_sp'].'<span>'.$rows['tenbaiviet_vi'].'</span>'.'</label>';
		}
		exit();
	}
	//

	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "check_sanpham"){
		$id			= $_POST['id'];
		if($id != ""){
			$sanpham 	= DB_fet("*","`#_baiviet`","`showhi` = 1 AND `step` = 2 AND (`tenbaiviet_vi` LIKE '%$id%' OR `tenbaiviet_en` LIKE '%$id%' OR `p1` = '$id')","`catasort` DESC, `id` DESC","","arr");
			foreach ($sanpham as $value) {
				echo '<li>
                        <a class="cur" onclick="ADD_idig(\''.$value['id'].'\', this)">
                          <img src="../'.$value['duongdantin'].'/'.$value['icon'].'" alt="">
                          <h3>'.$value['tenbaiviet_vi'].'</h3>
                          <p>'.$value['p1'].'</p>
                          <div class="clear"></div>
                        </a>
                      </li>';
			}
		}
		
		exit();
	}
	if(isset($_POST['ajax_action']) && $_POST['ajax_action'] == "load_tinh_thanh_mn"){
		$id			= $_POST['id'];
		$name		= $_POST['name'];

		echo '<option value="0">'.$name.'</option>';
	    $diadiem = LAY_khuvuc();
	    foreach ($diadiem as $val_1) { 
	        if($val_1['id_parent'] != $id) continue;
	      	echo '<option value="'.$val_1['id'].'" >'.$val_1['tenbaiviet_vi'].'</option>';
	    }
		exit();
	}
	if(isset($_POST['action_s']) && $_POST['action_s'] == "get_diadiem"){
		$id			= $_POST['id'];
		$text		= $_POST['text'];
		echo '<option value="0">'.$text.'</option>';
	    $diadiem = LAY_diadiem();
	    foreach ($diadiem as $val_1) { 
	        if($val_1['id_parent'] != $id) continue;
	      	echo '<option value="'.$val_1['id'].'">'.$val_1['tenbaiviet_vi'].'</option>';
	    }
		exit();
	}
	if(isset($_POST['sub_botton_ad']) && $_POST['sub_botton_ad'] == "forgot_pass") {
		$email       = isset($_POST['email']) ? $_POST['email'] : "";
		$js_capcha_v = isset($_POST['js_capcha_v']) ? $_POST['js_capcha_v'] : "";

		if(@md5($_SESSION['capcha_slider']) != $js_capcha_v || $js_capcha_v == ""){
			unset($_SESSION['capcha_slider']);
			ALERT_js("Lỗi xác thực bảo vệ !");
			LOCATION_js("index.php?module=forgot-password");
			exit();
		}

		$sql = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `phanquyen` <> 0 AND `email` = '".$email."' LIMIT 1");
	    if(DB_num($sql) > 0) {
			$r              = DB_arr($sql, 1);
			$hoten          = $r['hoten'];
			$active         = md5(time())."P_A".md5(GET_ip());
			$data           = array();
			$data['active'] = $active;      
			
			$sql            = ACTION_db($data, '#_members', 'update', NULL, "`email` = '".$email."' AND `phanquyen` <> 0");
			
			$url            = $fullpath.'/myadmin/index.php?module=change-password&email='.$r['email'].'&key='.$active;
			$message        = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><div><p>Xin Chào '.$hoten.',</p><p>Chúng tôi nhận được yêu cầu đổi mật khẩu từ email của bạn. Bạn hãy nhấn vào link đổi mật khẩu để tiến hành thay đổi mật khẩu mới.</p><p>Link đổi mật khẩu: <a href="'.$url.'" target="_blank">'.$url.'</a></p><p>Nếu bạn không thực hiện yêu cầu, vui lòng bỏ qua thư này và bảo mật lại tài khoản của bạn!</p></div>';
			$subject        = "Hướng dẫn thay đổi mật khẩu";
			
			$thongtin       = DB_que("SELECT * FROM `#_seo` LIMIT 1");
			$thongtin       = DB_arr($thongtin, 1);

			ob_start();
			GUI_email("$email", "$hoten", "$subject", $_SERVER['SERVER_NAME'], $message, $thongtin, "admin");
			ob_end_clean();
			

			ALERT_js("Thông tin lấy mật khẩu đã được gửi , vui lòng kiểm tra email để lấy mật khẩu mới!");
			LOCATION_js("index.php?module=login");
			exit();
	  	}
		ALERT_js("Email không tồn tại trong hệ thống!");
		LOCATION_js("index.php?module=forgot-password");
		exit();
	}
	//login ajax
	if(isset($_POST['sub_botton_ad']) && $_POST['sub_botton_ad'] == "login") {
		$cls_user_login = isset($_POST['username']) ? addslashes(trim($_POST['username'])) : "";
		$cls_pass_login = isset($_POST['passmd5']) ? addslashes(trim($_POST['passmd5'])) : "";
		$js_capcha_v    = isset($_POST['js_capcha_v']) ? $_POST['js_capcha_v'] : "";

		if(@md5($_SESSION['capcha_slider']) != $js_capcha_v || $js_capcha_v == ""){
			unset($_SESSION['capcha_slider']);
			ALERT_js("Lỗi xác thực bảo vệ !");
			LOCATION_js("index.php?module=login");
			exit();
		}
		unset($_SESSION['capcha_slider']);
		$sqlu              = DB_que("SELECT * FROM `#_members` WHERE `showhi` = 1 AND `tentruycap`='".$cls_user_login."' AND `phanquyen` <> 0 LIMIT 1");
		if(@DB_num($sqlu)) {
			$sqlu 			= DB_arr($sqlu, 1);
			$uid    		= @$sqlu["id"];
			$keypass  		= @$sqlu["keypass"];
			$matkhauin  	= @$sqlu["matkhau"];
			$matkhau  		= create_pass($auto_key_pass.strip_tags($cls_pass_login),$keypass);
 
			$_SESSION['phanquyen'] = @$sqlu["phanquyen"];
//			 die($matkhau);
			if($matkhauin != $matkhau) {
				ALERT_js("Tên đăng nhập hoặc mật khẩu không đúng!");
				LOCATION_js("index.php?module=login");
				exit();
			}
			else {
				
				DB_que("UPDATE `#_members` SET `ip_login` = '".GET_ip()."',`ip_login_time` = '".time()."' , `ip_login_last` = `ip_login`, `ip_login_last_time` = `ip_login_time` WHERE `id`='".$uid."'  LIMIT 1");

				unset($_SESSION['dangnhap']);
				$_SESSION['luluwebproadmin'] = $uid;
				LOCATION_js("index.php");
				exit();
			}
		}
		ALERT_js("Tên đăng nhập hoặc mật khẩu không đúng!");
		LOCATION_js("index.php?module=login");
		exit();
	}
	//

	if($module == 'forgot-password' && empty($_SESSION['luluwebproadmin'])){
		include "forgot-password.php";
		exit();
	}
	if($module == 'change-password' && empty($_SESSION['luluwebproadmin'])){
		include "change-password.php";
		exit();
	}

	if($module == 'login' && empty($_SESSION['luluwebproadmin'])){
		include "login.php";
		exit();
	}


	if(isset($_GET['action']) && $_GET['action'] == "dang-xuat")
	{
		unset($_SESSION['admin']);
		$_SESSION['luluwebproadmin'] = NULL;
		$_SESSION['phanquyen']     = NULL;
		LOCATION_js("index.php?module=login");
		exit();
	}
  
	if(empty($_SESSION['luluwebproadmin']))
	{
		LOCATION_js("index.php?module=login");
		exit();
	}
	
	if(!empty($_POST['ajax_send_img']) && $_POST['ajax_send_img'] == 1){
		$table = isset($_POST['table']) ? $_POST['table'] : "#_baiviet_img";
		foreach($_FILES['img_file']['name'] as $name => $value)
			{
				$uploaddir 		= "../$duongdantin/"; 
				$img_real_name 	= CONVERT_vn($_FILES['img_file']['name'][$name]);	
				$file 			= time()."_".$img_real_name;	
				$size 			= $_FILES['img_file']['size'][$name];
				$kietxuatid		= $_POST['kietxuatid'];
				$size_img		= $_POST['size_img'];


				if (move_uploaded_file($_FILES['img_file']['tmp_name'][$name], $uploaddir.$file)) 
				{ 
					if($size_img == ""){
						TAO_anhthumb($uploaddir.$file,$uploaddir."thumb_".$file, 500, 500, "images/trang_500_500.png");
					}
					else {
						$anh_sp = explode("x", $size_img);
			            $wid = $anh_sp[0];
			            $hig = $anh_sp[1];
						TAO_anhthumb($uploaddir.$file,$uploaddir."thumb_".$file, $wid, $hig, "images/trang_" . $wid . "_" . $hig . ".png");
					}
					TAO_anhthumb($uploaddir.$file,$uploaddir."thumbnew_".$file, 500, 500, "");
					$sql_in = DB_que("INSERT INTO $table (`icon`,`id_parent`,`duongdantin`) VALUES('$file','$kietxuatid','$duongdantin')", $table);
				} 
			}
		exit();
	}

	if(isset($_POST['action']) && $_POST['action'] == 'import_file'){
	    include "readexcel/index.php";
	    exit();
	}

	if(isset($_GET['export']) && $_GET['export'] == "excel"){
		include "export_excel.php";
	    exit();
	}

	if(!empty($_POST['ajax_action']) && $_POST['ajax_action'] == 'LOAD_danhmuc_mn'){
		$step    	= $_POST['id'];
		if($step == '-1'){
			$baiviet_arr  = DB_fet("*","#_baiviet", "`showhi` = '1' AND `step` = 0", "`catasort` DESC","", "arr");
			echo '<option value="0">Chọn danh mục</option>'; 
	    	foreach ($baiviet_arr as $row_1)
	            {		
	              	echo  '<option value="'.$row_1['id'].'">'.$row_1['tenbaiviet_vi'].'</option> ';
	            }
		}else{
			$chude_arr  = DB_fet("*","#_danhmuc", "`showhi` = '1' AND `step` = ".$step."", "`catasort` ASC","", "arr");
			echo '<option value="0">Chọn danh mục</option>'; 
	    	foreach ($chude_arr as $row_1)
	            {		
	            	if($row_1['id_parent'] != 0) continue;
	              	echo  '<option value="'.$row_1['id'].'">'.$row_1['tenbaiviet_vi'].'</option> ';
	              	foreach ($chude_arr as $row_2) 
			            {	
			            	if($row_2['id_parent'] != $row_1['id']) continue;	
			              	echo  '<option value="'.$row_2['id'].'">╚═►'.$row_2['tenbaiviet_vi'].'</option> ';
			              	foreach ($chude_arr as $row_3)
					            {	
					            	if($row_3['id_parent'] != $row_2['id']) continue;
					              	echo  '<option value="'.$row_3['id'].'"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╙─►'.$row_3['tenbaiviet_vi'].'</option> ';
					              	foreach ($chude_arr as $row_4) 
							            {	
							            	if($row_4['id_parent'] != $row_3['id']) continue;
									        echo  '<option value="'.$row_4['id'].'"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;╙─►'.$row_4['tenbaiviet_vi'].'</option> ';

										}
								}
						}
				}
		}
		
		exit();
	}
	 
?>