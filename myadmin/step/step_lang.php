 <?php
    $tabs = 0;
    $show_ghichu = 0;
    // if($step == 2 || $step == 3) {
    //   $show_ghichu = 1;
    // }
    foreach ($arr_list_lang as $key => $value) {
      $tabs++;
  ?>
  <div class="tab-pane <?=$tabs == 1 ? "active" : "" ?>" id="tab_<?=$tabs ?>">
    <div class="form-group">
      <label>Tên <?=$thongtin_step['tenbaiviet_vi']?> (<?=$value ?>)</label>
      <input type="text" class="form-control" value="<?=!empty(${"tenbaiviet_".$key}) ? SHOW_text(${"tenbaiviet_".$key}) : ''?>" name="tenbaiviet_<?=$key ?>" id="tenbaiviet_<?=$key ?>">
    </div>
    <?php if($id_step == 2){ ?>
      <!-- <div class="form-group">
        <label>Nhã nút (<?=$value ?>)</label>
        <input type="text" class="form-control" value="<?=!empty(${"tags_".$key}) ? SHOW_text(${"tags_".$key}) : ''?>" name="tags_<?=$key ?>" id="tags_<?=$key ?>">
      </div> -->
    <?php } ?>
    <?php if(!in_array($step, $st_bv_mota)){ ?>
    <div class="form-group">
      <label>Mô tả (<?=$value ?>)</label>
      <textarea id="mota_<?=$key ?>" name="mota_<?=$key ?>" class="paEditor"><?=!empty(${"mota_".$key}) ? SHOW_text(${"mota_".$key}) : ''?></textarea>
    </div>
    <?php } ?>
    <?php if($show_ghichu == 1){ ?>
    <div class="form-group">
      <label>Mô tả 2 (<?=$value ?>)</label>
      <textarea id="tags_<?=$key ?>" name="tags_<?=$key ?>" class="paEditor"><?=!empty(${"tags_".$key}) ? SHOW_text(${"tags_".$key}) : ''?></textarea>
    </div>
    <?php } ?>
    <?php if(!in_array($step, $st_bv_noidung)){ ?>
    <div class="form-group">
      <label>Nội dung (<?=$value ?>)</label>
      <textarea id="noidung_<?=$key ?>" name="noidung_<?=$key ?>" class="paEditor"><?=!empty(${"noidung_".$key}) ? SHOW_text(${"noidung_".$key}) : ''?></textarea>
    </div>
    <?php } ?>
    <div class="form-group" <?=$id_step ==  5 ? 'style="display: none"' : "" ?>>
      <label>Seo Title (<?=$value ?>)</label>
      <input type="text" class="form-control" name="seo_title_<?=$key ?>" value="<?=!empty(${"seo_title_".$key}) ? Show_text(${"seo_title_".$key}) : "" ?>">
    </div>

    <div class="form-group" <?=$id_step ==  5 ? 'style="display: none"' : "" ?>>
      <label>Seo Description (<?=$value ?>)</label>
      <input type="text" class="form-control" name="seo_description_<?=$key ?>" value="<?=!empty(${"seo_description_".$key}) ? Show_text(${"seo_description_".$key}) : "" ?>">
    </div>

    <div class="form-group" <?=$id_step ==  5 ? 'style="display: none"' : "" ?>>
      <label>Seo keywords (<?=$value ?>)</label>
      <input type="text" class="form-control" name="seo_keywords_<?=$key ?>" value="<?=!empty(${"seo_keywords_".$key}) ? Show_text(${"seo_keywords_".$key}) : "" ?>">
    </div>
    <!-- tinh năng input -->
    <?php
      if(!empty($tinhnang_arr)){
    ?>
      <!-- //tinh nang -->
       <?php 
        foreach ($tinhnang_arr as $val_tnn) {
          if($val_tnn['id_parent']    != 0 ) continue;
          if($val_tnn['loai_hienthi'] != 0 ) continue;

      ?>
      <div class="form-group">
        <label><?=$val_tnn['tenbaiviet_vi'] ?>  (<?=$value ?>)</label>
        <input type="text" class="form-control" name="tinhnang_input_val_<?=$key ?>_<?=$val_tnn['id'] ?>" value="<?=get_tinnang_input($val_tnn['id'], $id, $key) ?>">
      </div>
      <?php }} ?>
    <!--  -->
  </div>
  <?php } ?>