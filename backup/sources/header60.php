
<div class="header wow fadeInDown">
<div class="pagewrap">
	<div class="logo_top">
		<ul>
  		<li><a href="<?=$full_url ?>"><img src="<?=full_src($thongtin,'') ?>" alt="<?=$thongtin['tenbaiviet_'.$lang] ?>"></a></li>
  	
  		<h3><span><?=$glo_lang['slugan_1'] ?></span></h3>
			<div class="clr">

		</ul>
	</div>
	<div class="riht_header">
		<div class="box_search">
  		<div class="timkiem_top no_box">
        <div class="search">
            <a onClick="SEARCH_timkiem('<?=$full_url ?>/search/?key=','.input_search_enter'); if($('.input_search_enter').val() == '') $('.timkiem_top').removeClass('acti') " style="cursor:pointer">   <i class="fa fa-search" ></i></a>
            <input class="input_search input_search_enter " type="text" value=""  data=".input_search_enter" data-href="<?=$full_url ?>/search/?key=" placeholder="<?=$glo_lang['nhap_tu_khoa_tim_kiem'] ?>" />
        </div>
      </div>
			</div>
    	<div class="hotline_top">
    	<ul>
    		<h2><i class="fa fa-volume-control-phone"></i><?=$glo_lang['hotline'] ?>:<?php
                            $hotline_vi = explode("|", $thongtin['hotline_vi']);
                        $i = 0;
                        foreach ($hotline_vi as $val) {
                          $i++;
                          if($i > 1) echo ' - ';
                          echo '<a href="tel:'.$val.'">'.$val.'</a>';
                        }
                      ?><span><?=$glo_lang['ho_tro_247'] ?></span></h2>
    	  </ul>
    	</div>
      <?php include _source."lang.php"; ?>
      <div class="clr"></div>
    </div>
		
		
	<div class="clr"></div>
  </div>
</div>
<div class="box_menu wow fadeInDown">
  <div class="pagewrap">
    <?php include _source."menu_top.php"; ?>
    <div class="clr"></div>
  </div>
</div>