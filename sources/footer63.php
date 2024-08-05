<?php
  $noidung    = LAYTEXT_rieng(82);
?>
<div class="footer_top">
	<div class="pagewrap">
		<div class="ft_logo"><?=full_img($noidung, '') ?></div>
		<div class="ft_text">
			<h3><?=SHOW_text($noidung['tenbaiviet_'.$lang]) ?></h3>
	        <div class="n-foot">
	            <?=SHOW_text($noidung['noidung_'.$lang]) ?>
	        </div>
		</div>

		<div class="ft_right">
			<?php
			  $banner_top = LAY_banner_new("`id_parent` = 30");
			  if(count($banner_top)) {
			  	foreach ($banner_top as $rows) { 
			?>
				<a <?=full_href($rows) ?>><?=full_img($rows, '') ?></a>
			<?php }} ?>
		</div>
	</div>
	<div class="clr"></div>
</div>
<div class="line-header line-bottom"><img src="images/line-header.png"></div>
<div class="bottom_id_copyright">
	<div class="pagewrap">
		<p><?=$glo_lang['ban_quyen_name'] ?>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://web30s.vn/" title="thiết kế website" target="_blank">Thiết kế và phát triển bởi</a> <a href="https://web30s.vn/" target="_blank">P.A Việt Nam</a></p>
	</div>
</div>
<div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>
