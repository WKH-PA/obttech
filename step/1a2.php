<?php 
	if($motty 	== "404"){
		$nd_404 		 = DB_fet_rd("*","`#_seo_name` "," `id` = 1 ","",1);
  	$arr_running = reset($nd_404);
  		// $bre 				= SHOW_text($arr_running['tenbaiviet_'.$_SESSION['lang']]);
	}

  $bre  = SHOW_text($arr_running['tenbaiviet_'.$lang]);
	if(empty($thongtin_step)){
		$thongtin_step['id'] = 1;
  }
  else {
    $bre =  '<a href="'.GET_link($full_url, SHOW_text($thongtin_step['seo_name'])).'">'.$thongtin_step['tenbaiviet_'.$lang].'</a>';
  }
	$thongtin_step   = LAY_anhstep_now($thongtin_step['id']);

  // $img_bg = checkImage($fullpath, $thongtin_step['icon'], $thongtin_step['duongdantin']);

  // if($arr_running['icon_hover'] != "") {
  //   $img_bg = checkImage($fullpath, $arr_running['icon_hover'], $arr_running['duongdantin']);
  // }
// 
	// $list_hinhcon = LAY_hinhanhcon($arr_running['id'], 50);
	// if($motty   != "404"){
	//   	$danhmuc = LAY_danhmuc($slug_step);
	// }
	// 
	$baiviet_ct = LAY_baiviet_chitiet($arr_running['id']);
?>

<div class="link_page" style="background: url(<?=full_src($thongtin_step, '') ?>)">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>/</span><a><?=!empty($danhmuc) && count($danhmuc) ? $thongtin_step['tenbaiviet_'.$lang] : $arr_running['tenbaiviet_'.$lang] ?></a></li>
      <div class="clr"></div>
    </ul>
    <div class="clr"></div>
  </div>
</div>
<div class="pagewrap page_conten_page">
	<div class="dv-child-left">
		<h1 class="title"><?=SHOW_text($arr_running['tenbaiviet_'.$lang]) ?></h1>
		<div class="showText ">
			<?php
			  $nd   = SHOW_text($arr_running['noidung_'.$lang]);
			  if($motty   == "404"){
			    $nd = str_replace('[tencongty]', $thongtin['tenbaiviet_'.$lang], $nd);
			  }
			  echo $nd;
			?><div class="clr"></div>
			<!--  -->
			<?php if(count($baiviet_ct)){ ?>
			<div class="our_company flex">
				<?php if($arr_running['icon'] != ""){ ?>
		        <?=full_img($arr_running, '') ?>
		    	<?php } ?>
		        <?php foreach ($baiviet_ct as $rows) { ?>
		        <div class="our_company1">
		          <div class="showText"><?=SHOW_text($rows['noidung_'.$lang]) ?></div>
		          <h4><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h4>
		        </div>
		    	<?php } ?>
		        <div class="clr"></div>
		     </div>
		 	<?php } ?>
			<!--  -->
		</div>
		<?php if($motty   == "404"){ ?>
		<div class="dv_404_gohome">
		  <a href="<?=$full_url ?>"><?=$glo_lang['ve_trang_chu'] ?> <span class="time_doi"></span></a>
		</div>
		<script type="text/javascript">
		  var time_doi = 11;
		  setInterval(function(){ time_doi--; $('.time_doi').html("("+time_doi+")"); if(time_doi < 1) window.location.href = '<?=$full_url ?>' }, 1000);
		</script>
		<?php } else { ?>
		<?php include _source."fb_sharelink.php"; ?>
		<div class="dv-fb_coment">
		<?php include _source."fb_coment.php"; ?>
		</div>
		<?php } ?>
	</div>
	<?php include _source."right_conten.php" ?>
    <div class="clr"></div>
 </div>       