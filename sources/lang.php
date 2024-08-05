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
<?php include _source."google_dich.php"; ?>
<li style="border-right:none;" class="li-lang">
	<a onclick="myreset()" href="<?=$fullpath.$las_url."/?actilang=true" ?>">VN</a> | 
	<a onclick="myreset()" href="<?=$fullpath.'/en'.$las_url."/?actilang=true" ?>">EN</a> | 
	<a href="<?=$fullpath.'/'.$las_url."?actilang=true&editor_console=#googtrans(vi|zh-CN)" ?>">CN</a>
</li>

<?php } ?>