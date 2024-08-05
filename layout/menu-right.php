<div class="left-danhmuc">
  <div class="search-product">
    <div class="title_right_pro_view">Tìm kiếm nhanh</div>
    <div class="timkiem_top">
      <form action="" method="post">
        <div class="search"> <a href="#" onclick="#" style="cursor:pointer">Nhập từ khóa tìm kiếm ...</a>
          <input class="input_search" type="text" value="Nhập từ khóa" onfocus="if (this.value == 'Nhập từ khóa'){this.value='';}" onblur="if (this.value == '') {this.value='Nhập từ khóa';}">
        </div>
      </form>
    </div>
    <select>
      <option value="0">Tất cả sản phẩm...</option>
      <option value="1">Khóa RFID khách sạn</option>
      <option value="2">Khóa phòng tắm</option>
      <option value="2">Két an toàn trong phòng khách sạn</option>
    </select>
    <select>
      <option value="0">Giá sản phẩm</option>
      <option value="1">1.000.000 đ - 2.000.000 đ</option>
      <option value="2">2.000.000 đ - 4.000.000 đ</option>
      <option value="3">4.000.000 đ - 5.000.000 đ</option>
    </select>
    <div class="custom-select custom-select-lastchild">
      <p><a href="index.php?page=search">Tìm sản phẩm</a></p>
    </div>
    <div class="clr"></div>
  </div>
  <div class="bh-right-ad">
    <div class="box_right_pro_view">
      <div class="title_right_pro_view">Danh mục</div>
      <ul>
        <li><a href="index.php?page=sanpham" title="chức năng Bluetooth - Mã số - Thẻ từ - Chìa cơ">Chức năng Bluetooth - Mã số - Thẻ từ - Chìa cơ</a></li>
        <li><a href="index.php?page=sanpham" title="chức 
          năng Vân tay - Mã số - Thẻ từ - Chìa cơ">Chức 
        năng Vân tay - Mã số - Thẻ từ - Chìa cơ</a></li>
        <li><a href="index.php?page=sanpham" title="chức 
          năng Mã số - Thẻ từ - Chìa cơ">Chức 
        năng Mã số - Thẻ từ - Chìa cơ</a></li>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
  <div class="multiple-items owl-carousel owl-theme owl-custome" id="images_slide">
    <div class="img-qc"><a href="index.php?page=sanpham"><img src="delete/sp/sanpham1.jpg"></a></div>
    <div class="img-qc"><a href="index.php?page=sanpham"><img src="delete/sp/sanpham2.jpg"></a></div>
    <div class="img-qc"><a href="index.php?page=sanpham"><img src="delete/sp/sanpham3.jpg"></a></div>
    <div class="img-qc"><a href="index.php?page=sanpham"><img src="delete/sp/sanpham4.jpg"></a></div>
    <div class="img-qc"><a href="index.php?page=sanpham"><img src="delete/sp/sanpham5.jpg"></a></div>
  </div>
  <div class="bh-right-ad">
    <div class="box_right_pro_view pro_view_sp">
      <div class="title_right_pro_view">Dự án mới</div>
      <div class="new_right">
        <?php for ($i=0; $i < 4; $i++) {  ?>
          <ul>
            <li><a href="index.php?page=duan_view"><img src="delete/duan<?=$i+1 ?>.jpg"></a></li>
            <h3><a href="index.php?page=duan_view">Tên dự án</a></h3>
            <div class="clr"></div>
          </ul>
        <?php } ?>
        <div class="clr"></div>
      </div>
      <div class="clear"></div>
      <p><a href="index.php?page=duan">Xem tất cả »</a></p>
    </div>
    <div class="clear"></div>
  </div>
</div>