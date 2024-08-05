<?php
  $tinhnang  = LAY_bv_tinhnang(3);
  $slug_step = 3;
  $numview   = 15;
  $tn        = isset($_GET['tn']) ? $_GET['tn'] : "";
  if($tn != "") {
    $_SESSION['tn'] = $tn;
  }
  else {
    if($motty == "du-an-dang-ban") {
      $_SESSION['tn'] = "";
    }
  }

  $tn = $_SESSION['tn'];
  $wh = "";
  if($tn != "") {
    $list_check     = str_replace("-", ",", $tn);
    $list_check     = trim($list_check,",");
    $list_check_arr = explode(",", $list_check);
    $tinhnang_rm    = DB_fet("*","`#_baiviet_tinhnang`","","`id` DESC","","arr");
    foreach ($tinhnang_rm as $rows) {
      if($rows['id_parent'] != 0) continue;
      ${"wh_end".$rows['id']} = "";

      foreach ($tinhnang_rm as $rows_2) {
        if($rows_2['id_parent'] != $rows['id']) continue;
        if(!in_array($rows_2['id'], $list_check_arr)) continue;

          if(${"wh_end".$rows['id']} != "") {
            ${"wh_end".$rows['id']} .= " OR ";
          }
          ${"wh_end".$rows['id']} .= " `id_val` = '".$rows_2['id']."' ";
      }

      if(${"wh_end".$rows['id']} != "") {
        //query now
        $list_id_tn_sp          = DB_que("SELECT `id_baiviet` FROM `#_baiviet_select_tinhnang`  WHERE `showhi` = 1 AND (".${"wh_end".$rows['id']}.")");
        ${"wh_end".$rows['id']}   = "0";

        $list_id_tn_sp = DB_arr($list_id_tn_sp);
        foreach ($list_id_tn_sp as $rows_bvv) {
          ${"wh_end".$rows['id']} .=  ",".$rows_bvv['id_baiviet'];
        }

        $wh .= " AND `id` IN (".${"wh_end".$rows['id']}.")";
        // $wh_is_tinhnang .= " AND `id` IN (".${"wh_end".$rows['id']}.")";

      }
    }
  }

  include _source."phantrang_kietxuat.php";
?>
<div class="link_title">
  <div class="pagewrap">
    <ul>
      <li><i class="fa fa-home"></i><a href="<?=$full_url ?>"><?=$glo_lang['trang_chu'] ?></a><span>/</span><a><?=$motty = "du-an-dang-tim-kiem" ? $glo_lang['du_an_dang_tim_kiem'] : $glo_lang['du_an_dang_ban'] ?></a></li>
      <div class="clr"></div>
    </ul>
  </div>
</div>
<div class="product-view-ad pagewrap">

<div class="right-new psec_main_c right-text">
  <div class="home-search">
    <?php
      $i = 0;
      $tnar = explode("-", @$_SESSION['tn']);
      foreach ($tinhnang as $tnn) {
        if($tnn['id_parent'] != 0 || $tnn['opt1'] == 0 || $i > 3) continue;
        $i++;
    ?>
    <div class="custom-select">
      <select class="js_sel_timkiem">
        <option value=""><?=$tnn['tenbaiviet_'.$lang] ?></option>
        <option value=""><?=$tnn['tenbaiviet_'.$lang] ?></option>
        <?php
          foreach ($tinhnang as $tnn_2) {
            if($tnn_2['id_parent'] != $tnn['id']) continue;
        ?>
        <option value="<?=$tnn_2['id'] ?>" <?=in_array($tnn_2['id'], $tnar) ? 'selected="selected"' : "" ?>><?=$tnn_2['tenbaiviet_'.$lang] ?></option>
        <?php } ?>
      </select>
    </div>
    <?php } ?>
    <div class="custom-select custom-select-lastchild">
      <p><a class="cur" onclick="timkiem_sp_da()"><?=$glo_lang['tim_kiem'] ?></a></p>
    </div>

    <div class="clr"></div>
  </div>
  <div class="career-box tb_rps">
    <table class="table text-xs-center">
      <thead>
        <tr>
          <th><?=$glo_lang['stt'] ?></th>
          <th><?=$glo_lang['ten_du_an'] ?></th>
          <?php
              $i = 0;
              foreach ($tinhnang as $tnn) {
                if($tnn['id_parent'] != 0 || $tnn['opt1'] == 0 || $i > 3) continue;
                $i++;
            ?>
            <th><?=$tnn['tenbaiviet_'.$lang] ?></th>
            <?php } ?>
          <th style="width: 30%;"><?=$glo_lang['ghi_chu'] ?></th>
        </tr>
      </thead>
      <tbody>
        <?php
            if($nd_total == 0){
              echo "<div class='dv-notfull'>".$glo_lang['khong_tim_thay_du_lieu_nao']."</div>";
            }
            else{
                $jk = 0;
                foreach ($nd_kietxuat as $rows) {
                  $jk++;
        ?>
        <tr>
          <td title="<?=$glo_lang['stt'] ?>">
            <span><?=$jk ?></span>
          </td>
          <td title="<?=$glo_lang['ten_du_an'] ?>">
            <h2><a class="transition" <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a></h2>
          </td>
          <?php
            $k = 0;
            foreach ($tinhnang as $tnn) {
              if($tnn['id_parent'] != 0 || $tnn['opt1'] == 0 || $k > 3) continue;
                $k++;
          ?>
          <td title="<?=$tnn['tenbaiviet_'.$lang] ?>"><?=get_tinnang_input($tnn['id'], $rows['id'], $lang, $tnn['loai_hienthi'], $tinhnang) ?></td>
          <?php } ?>
          <td title="<?=$glo_lang['ghi_chu'] ?>"><?=SHOW_text($rows['mota_'.$lang]) ?></td>
        </tr>
      <?php  }} ?>
        
        </tbody>
      </table>
    </div>
      <div class="nums no_box">
      <?=PHANTRANG($pzer, $sotrang, $full_url."/".$motty, $_SERVER['QUERY_STRING']) ?>
      <div class="clr"></div>
      </div>
    <div class="clr"></div>
  </div>
  <div class="left-danhmuc">
    <?php
      $us_online = LAY_sponline();
      if(count($us_online)){
    ?>
    <div class="agent-details">
      <?php foreach ($us_online as $rows) { ?>


      <!-- server result -->
      <div class="agent-header">
        <div class="agent-img">
          <img src="<?=full_src($rows, '') ?>" alt="<?=$rows['tenbaiviet_'.$lang] ?>">
        </div>
        <h5 class="name"><?=$rows['tenbaiviet_'.$lang] ?> </h5>
      </div>
      <?php if($rows['phone'] != ""){ ?>
      <p><i class="fa fa-phone"></i><span><a href="tel:<?=$rows['phone'] ?>"><?=$rows['phone'] ?></a></span></p>
      <?php } ?>
      <?php if($rows['email'] != ""){ ?>
      <p><i class="fa fa-envelope-o"></i><a class="email" href="mailto:<?=$rows['email'] ?>"><?=$rows['email'] ?></a></p>
      <?php } ?>
      <?php } ?>

      <p class="view_all"><a onclick="LOAD_popup_new('<?=$full_url."/pa-size-child/lien-he-ngay/?id=0" ?>', '450px')" class="view-more preview cur"><?=$glo_lang['lien_he'] ?></a></p>
    </div>
    <?php } ?>
  <div class="title_right_pro_view title_right_add"><?=$glo_lang['du_an_tuong_tu'] ?></div>
  <div class="right_tt_home wow fadeInRight">
    <div class="marquee">
      <?php
        $duan_dang = LAY_baiviet(3, 20, "`opt1` = 0");
        foreach ($duan_dang as $rows) {
      ?>
      <ul>
        <li><a <?=full_href($rows) ?>><img src="<?=full_src($rows) ?>"/></a></li>
        <h3><a <?=full_href($rows) ?>><?=SHOW_text($rows['tenbaiviet_'.$lang]) ?></a> <span><i class="fa fa-calendar"></i><?=date("d/m/Y", $rows['ngaydang']) ?></span>
          <!-- <span><?=$glo_lang['luot_xem'] ?>: <?=number_format($rows['soluotxem']) ?></span> -->
        </h3>
        <div class="clr"></div>
      </ul>
      <?php } ?>
      
    </div>
    <script>
      $('.marquee').marquee({
        duration: 19000,
        gap: 0,
        delayBeforeStart: 0,
        direction: 'up',
        duplicated: true,
        pauseOnHover: true,
        startVisible: true
      });
    </script>
  </div>
</div>
  <div class="clr"></div> 

</div>

<script>
  $(function(){
    var x, i, j, l, ll, selElmnt, a, b, c;
  x = document.getElementsByClassName("custom-select");
  l = x.length;
  for (i = 0; i < l; i++) {
    selElmnt = x[i].getElementsByTagName("select")[0];
    ll = selElmnt.length;
    a = document.createElement("DIV");
    a.setAttribute("class", "select-selected");
    a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
    x[i].appendChild(a);
    b = document.createElement("DIV");
    b.setAttribute("class", "select-items select-hide");
    for (j = 1; j < ll; j++) {
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.setAttribute("id", selElmnt.options[j].value);

    if(selElmnt.options[j].selected) {
      c.setAttribute("class", "same-as-selected");
    }
    c.addEventListener("click", function(e) {
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
      });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
  }
});
function closeAllSelect(elmnt) {
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
document.addEventListener("click", closeAllSelect);

function timkiem_sp_da(){
    var js_tinhnang = "";
    $(".select-items .same-as-selected").each(function(){
        if($(this).attr("id") != "") {
            if(js_tinhnang == "") js_tinhnang += $(this).attr("id");
            else js_tinhnang += "-"+$(this).attr("id");
        }
    });
    window.location.href = full_url + "/du-an-dang-ban/?tn=" + js_tinhnang;
}
</script>

<div class="dv-popup-new no_box">
  <div class="dv-popup-new-child">
    <a class="popup-close"></a>
    <div class="dv-nd-popup"></div>
  </div>
</div>