<?php
	if($thongtin['is_lang'] == 1){
	$las_url    = "";
	if($motty  != "") $las_url    .= "/".$motty;
	if($haity  != "") $las_url    .= "/".$haity;
	if($baty   != "") $las_url    .= "/".$baty;
	if($bonty  != "") $las_url    .= "/".$bonty;
	if($namty  != "") $las_url    .= "/".$namty;
	// if($lang == "vi"){
?>

<div class="dropdown">
	<?php if($lang == "vi"){ ?>
    <!-- <a><img src="images/vn.png"></a> -->
    <a> VI <i class="fa fa-angle-down"></i></a>
	<?php }else if($lang == "en"){ ?>
	<!-- <a><img src="images/eng.png"></a> -->
	<a> EN <i class="fa fa-angle-down"></i></a>
	<?php }else if($lang == "jp"){ ?>
	<!-- <a><img src="images/japan.png"></a> -->
	<a> JP <i class="fa fa-angle-down"></i></a>
	<?php }else if($lang == "cn"){ ?>
	<!-- <a><img src="images/rs.png"></a> -->
	<a> RS <i class="fa fa-angle-down"></i></a>
	<?php }else if($lang == "kr"){ ?>
	<a> KR <i class="fa fa-angle-down"></i></a>
	<?php }else if($lang == "in"){ ?>
	<a> CN <i class="fa fa-angle-down"></i></a>
	<?php } ?>
    <div class="dv-dropdown-menu" aria-labelledby="dropdownMenu1">
        <li><a href="<?=$fullpath.$las_url."/?actilang=true" ?>"><img src="images/vn.png"><span>Việt Nam</span></a></li>
        <li><a href="<?=$fullpath.'/en'.$las_url."/?actilang=true" ?>"><img src="images/eng.png"><span>English</span></a></li>
        <li><a href="<?=$fullpath.'/jp'.$las_url."/?actilang=true" ?>"><img src="images/japan.png"><span>Japan</span></a></li>
        <li><a href="<?=$fullpath.'/rs'.$las_url."/?actilang=true" ?>"><img src="images/rs.png"><span>Rusia</span></a></li>
        <li><a href="<?=$fullpath.'/kr'.$las_url."/?actilang=true" ?>"><img src="images/kr.png"><span>Korea</span></a></li>
        <li><a href="<?=$fullpath.'/cn'.$las_url."/?actilang=true" ?>"><img src="images/cn.png"><span>China</span></a></li>
    </div>
</div>
<?php } ?>