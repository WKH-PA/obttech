<ul class="wow flipInY">
  <a <?=full_href($rows) ?>>
    <li><?=!empty($view) && $view  == "slider" ? '<img src="'.full_src($rows).'" alt="'.SHOW_text($rows['tenbaiviet_'.$lang]).' title="'.SHOW_text($rows['tenbaiviet_'.$lang]).'">' : full_img($rows) ?></li>
    <h3><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></h3>
    <h4><?=$gia['text_gia'].$gia['text_km'] ?></h4>
  </a>
  <div class="view_more_pro">
    <div class="clolum_id">
      <a class="cur p_yeuthich  p_yeuthich_<?=$rows['id'] ?>" onclick="ADD_yeuthich(this, <?=$rows['id'] ?>)" data="0"><i class="fa fa-heart-o"></i></a>
      <!-- <a class="cur p_yeuthich  p_yeuthich_<?=$rows['id'] ?>" onclick="yeu_thich(this, <?=$rows['id'] ?>)" data="0"><i class="fa fa-heart-o"></i></a> -->
    </div>
    <div class="clolum_id">
      <a <?=full_href($rows) ?>><i class="fa fa-eye"></i></a>
      <!-- <a class="cur" onclick="load_view_sp(<?=$rows['id'] ?>, this)"><i class="fa fa-eye"></i></a> -->
    </div>
    <div class="clolum_id">
      <a href="<?=$full_url."/gio-hang/?id=".$rows['id'] ?>"><i class="fa fa-cart-plus"></i></a>
    </div>
    <div class="clr"></div>
  </div>
</ul>