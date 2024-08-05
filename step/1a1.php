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
	$list_hinhcon = LAY_hinhanhcon($arr_running['id'], 50);
	if($motty   != "404"){
	  	$danhmuc = LAY_danhmuc($slug_step);
	}
?>
<!-- <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span><i class="fa fa-angle-right"></i></span><a <?=full_href($arr_running) ?>><?=$arr_running['tenbaiviet_'.$lang] ?></a></li> -->

<div class="link_title">
  <div class="pagewrap">
    <ul>
    	<li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>/</span><a><?=!empty($danhmuc) && count($danhmuc) ? $thongtin_step['tenbaiviet_'.$lang] : $arr_running['tenbaiviet_'.$lang] ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="page_conten_page_goithieu">
<?php
	if(!empty($danhmuc) && count($danhmuc)){

	foreach ($danhmuc as $dm) {
		$baiviet = LAY_baiviet($slug_step,0,"`id_parent` = '".$dm['id']."'");
		if($dm['nhom_sp'] == 0 && count($baiviet)){
		  $rows = $baiviet[0];

?>
<div class="about_home">
  <div class="pagewrap">
    <div class="group-box">
      <div class="col-md-8 wow fadeInLeft">
        <div class="wrapper-detail">
          <h2><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h2>
          <div class="showText">
          	<?=SHOW_text($rows['noidung_'.$lang]) ?>
          </div>
        </div>
      </div>
      <a onclick="LOAD_video_youtube('<?=GET_ID_youtube($rows['link_video']) ?>')" class="preview cur"><div class="col-md-4 wow fadeInRight">
        <?=full_img($rows, '') ?>
      </div></a>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<?php } if($dm['nhom_sp'] == 1 && count($baiviet)){ $rows = $baiviet[0]; ?>
<div class="block-ideal ">
  <?=full_img($rows, '') ?>
  <div class="content-idl">
    <h2><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h2>
    <div class="desc"><?=SHOW_text($rows['noidung_'.$lang]) ?></div>
  </div>
  <div class="clr"></div>
</div>
<?php } if($dm['nhom_sp'] == 2 && count($baiviet)){ ?>
<div class="dv-tamnhin">
	<div class="pagewrap ">
		  <div class="padding_pagewrap align_center">
		    <h4 class="title_home wow flipInY"><?=SHOW_text($dm['tenbaiviet_'.$lang]) ?></h4>
		    <div class="col-md-12 flex">
		    	<?php foreach ($baiviet as $rows) {?>
		        <div class="col-md-6 wow fadeInLeft">
		          <?=full_img($rows, '') ?>
		          <h6><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h6>
		          <p><?=SHOW_text(strip_tags($rows['noidung_'.$lang])) ?></p>
		        </div>
		        <?php } ?>
		    <div class="clr"></div>
		  </div>
	  </div>
	</div>
</div>
<?php } if($dm['nhom_sp'] == 3 && count($baiviet)){ $rows = $baiviet[0]; $list_hinhcon = LAY_hinhanhcon($arr_running['id'], 50); ?>
<div class="pagewrap ">
  	<div class="padding_pagewrap align_center">
	  	<div class="about_doitac home-kh-a">
		  	<h5 class="title_home wow flipInY"><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h5>
		    <p><?=SHOW_text($rows['noidung_'.$lang]) ?></p>
		    <?php if(count($list_hinhcon)){ ?>
		    <div class="home-kh-a wow fadeInDown">
		    	<div class="dv-slider no_box">
	            <!--  -->
			    <?php $data = array("2","3","4","5","6","6") ?>
			      <div class="owl-auto owl-carousel owl-theme flex" data0="<?=$data[0] ?>" data1="<?=$data[1] ?>" data2="<?=$data[2] ?>" data3="<?=$data[3] ?>" data4="<?=$data[4] ?>" data5="<?=$data[5] ?>" is_slidespeed="1000" is_navigation="1" is_dots="1" is_autoplay="1">
			      <?php 
			        // $i = 0;
			        foreach ($list_hinhcon as $rows) { 
			          // $i++;
			          // if($i == 1) echo '<div class="item">';
			      ?>
			      <div class="item">
			        <div class="i-con-kh">
			          <a>
			            <img src="<?=full_src($rows, '') ?>">
			          </a>
			        </div>
			      </div>
			      <?php } // if($i == 2) { echo '</div>'; $i = 0;} } if($i == 1)  echo '</div>'; ?>

			    </div>
			    <div class="clr"></div>
			    <!--  -->
			    </div>
	        </div>
	    	<?php } ?>
		    <div class="clr"></div>
	  	</div>
  	</div>
</div>
<?php }} ?>
<div class="pagewrap  ">
	<?php include _source."fb_sharelink.php"; ?>
</div>
<?php } else { ?>
<div class="pagewrap page_conten_page">
	<div class="showText">
	<?php
	  $nd   = SHOW_text($arr_running['noidung_'.$lang]);
	  if($motty   == "404"){
	    $nd = str_replace('[tencongty]', $thongtin['tenbaiviet_'.$lang], $nd);
	  }
	  echo $nd;
	?><div class="clr"></div>
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
<?php }  ?>
</div>