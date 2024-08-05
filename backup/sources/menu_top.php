<ul class="menu tree_parent no_box" id="menu">
	<!-- <li class="homepage"><a href="<?=$full_url ?>"><i class="fa fa-home"></i></a></li> -->
  	<?=$amenu = GET_menu_new($full_url, $lang, '', '', '', 1) ?>
</ul>
<?php if(0){ ?>
<div class="mn-mobile" >
	<a href="<?=$full_url ?>" class="a_trangchu_mb"><i class="fa fa-home"></i></a>
	<!-- <a href="<?=$full_url ?>" class="a_trangchu_mb"><?=$glo_lang['trang_chu'] ?></a> -->
	<div class="menu-bar hidden-md hidden-lg">
		<a href="#nav-mobile">
			<!-- <img src="images/menu-mobile-lh.png" alt=""> -->
			<span>&nbsp;</span>
			<span>&nbsp;</span>
			<span>&nbsp;</span>
		</a>
	</div>

	<div id="nav-mobile" style="display: none">
		<ul>
			<?=$amenu ?>
		</ul>
	</div>
</div>
<script>
	$(function(){
		$(".menu  li").each(function(){
			if($("ul", this).length > 0){
				var a_ok = $("a",this).eq(0).attr('addok');
				if(a_ok != "ok"){
					$("a",this).eq(0).append('<i class="fa fa-angle-down"></i>');
					$("a",this).eq(0).attr("addok","ok");
				}
			}
		});

		<?php
			$id_prrr = 0;
			if(!empty($slug_table) && $slug_table == "danhmuc") $id_prrr = $arr_running['id'];
			else if(!empty($slug_table) && $slug_table == "baiviet") $id_prrr = $arr_running['id_parent'];
			if($id_prrr != 0){
				echo '$(".is_step_1.hide_'.$id_prrr.'").addClass("acti")';
			}
			else {
				echo '$(".is_step_0").addClass("acti")';
			}
		?>
	});

	// ////
	// $(".btn_menu").trigger("click")
</script>
<?php } ?>
<script>
	$("nav#menu").mmenu({ "navbars": [ { content		: [ 'prev', 'close' ] }, ] });
	$(function() {
	   $('.btn_menu').hover( function(){
	      $(".btn_menu").trigger("click");
	   });
	});
</script>