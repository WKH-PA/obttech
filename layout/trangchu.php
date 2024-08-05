<?php include "banner_home.php";?>
<div class="home-0">
  <h2 class="title">Bộ sưu tập</h2>
  <p class="p-brief">Loạt sản phẩm của orbita bao gồm hệ thống khóa thẻ từ khách sạn, két sắt trong phòng khách sạn, minibar khách sạn, công tắc màn hình cảm ứng, điện thoại trong phòng khách sạn, tủ khóa, hệ thống phòng khách sạn thông minh và các phụ kiện trong phòng khách sạn, là những sản phẩm có nhiều năm kinh nghiệm tích hợp với tiên tiến công nghệ từ siemens, dallas, atmel, philips, v.v ...</p>
  <div class="clr"></div>
</div>
<div class="home-1">
  <div class="owl-carousel owl-theme owl-custome" id="pro_slide">
    <div class="col-md-3 col-sm-3 box box1 wow fadeindown">
      <div class="box-inner">
        <a href="index.php?page=sanpham">
          <img src="delete/duan1.jpg" alt="Chức năng Bluetooth">
          <h3><img src="images/bluetooth.png"></h3>
        </a>
      </div>
    </div>
    <div class="col-md-3 col-sm-3 box box3 wow fadeindown">
      <div class="box-inner">
        <a href="index.php?page=sanpham">
          <img src="delete/duan2.jpg" alt="Chức năng Vân tay">
          <h3><img src="images/vantay.png"></h3>
        </a>
      </div>
    </div>
    <div class="col-md-3 col-sm-3 box box3 wow fadeindown">
      <div class="box-inner">
        <a href="index.php?page=sanpham">
          <img src="delete/duan3.jpg" alt="Chức năng Mã số ">
          <h3><img src="images/maso.png"></h3>
        </a>
      </div>
    </div>
  </div>
  <div class="clr"></div>
</div>

<div class="home-2">
  <h4 class="title">showroom</h4>
  <video width="100%" height="auto" loop="" id="slide_video" muted="" autoplay>
    <source src="delete/video.mp4" type="video/mp4">
    </video>
  </div>

  <div class="dv-home-duan">
    <h4 class="title">Dự án trọng điểm</h4>
    <div class="dv-home-da">
      <ul>
        <?php for ($i=0; $i < 4; $i++) {  ?>
          <li class="">
            <div class="img">
              <a href="index.php?page=duan_view"><img src="delete/duan<?=$i+1 ?>.jpg" alt=""></a>
            </div>
            <div class="titleOfFoodComponent">
              <a href="index.php?page=duan_view">Tên dự án</a>
            </div>
            <p><i class="fa fa-calendar"></i>26/08/2020</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
            <div class="orange-optional">
              <a href="index.php?page=duan_view" class="orange-button">Xem chi tiết »</a>
            </div>
          </li>
        <?php } ?>
        <?php for ($i=0; $i < 4; $i++) {  ?>
          <li class="">
            <div class="img">
              <a href="index.php?page=duan_view"><img src="delete/duan<?=$i+1 ?>.jpg" alt=""></a>
            </div>
            <div class="titleOfFoodComponent">
              <a href="index.php?page=duan_view">Tên dự án</a>
            </div>
            <p><i class="fa fa-calendar"></i>26/08/2020</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
            <div class="orange-optional">
              <a href="index.php?page=duan_view" class="orange-button">Xem chi tiết »</a>
            </div>
          </li>
        <?php } ?>
        <?php for ($i=0; $i < 2; $i++) {  ?>
          <li class="">
            <div class="img">
              <a href="index.php?page=duan_view"><img src="delete/duan<?=$i+1 ?>.jpg" alt=""></a>
            </div>
            <div class="titleOfFoodComponent">
              <a href="index.php?page=duan_view">Tên dự án</a>
            </div>
            <p><i class="fa fa-calendar"></i>26/08/2020</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
            <div class="orange-optional">
              <a href="index.php?page=duan_view" class="orange-button">Xem chi tiết »</a>
            </div>
          </li>
        <?php } ?>
        <div class="clr"></div>
      </ul>
    </div>
    <div class="clr"></div>
  </div>

  <div class="about_home">
    <div class="wow fadeindown animated">
      <div class="group-box">
        <div class="col-md-8">
          <div class="wrapper-detail">
            <h5 class="title">khái nét OBT việt nam</h5>
            <p>Hãy để Thương hiệu Khóa thông minh OBT hàng đầu Việt Nam mang lại cho tổ ấm của 
            Bạn:</p>
            <p>An toàn trong bảo vệ những người thân yêu,<br>
              Bảo mật hiện đại - Nhanh chóng tiện lợi trong phương thức mở khóa & quản lý,<br>
            Sang trọng - Tiện nghi - Đẳng cấp trong thiết kế</p>
            <p>‘OBT Smart Lock – Keep Your Home Safe’</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="vc_col-xs-3">
            <div class="vc_column-inner">
              <figure class="wpb_wrapper vc_figure">
                <a href="index.php?page=sanpham" target="_self" class="vc_single_image-wrapper">
                  <i class="fa fa-file-image-o" aria-hidden="true"></i>
                  <p>Bộ Sưu Tập</p>
                </a>
              </figure>
            </div>
          </div>
          <div class="vc_col-xs-3">
            <div class="vc_column-inner">
              <figure class="wpb_wrapper vc_figure">
                <a href="index.php?page=dichvu" target="_self" class="vc_single_image-wrapper">
                  <i class="fa fa-cog" aria-hidden="true"></i>
                  <p>Dịch vụ</p>
                </a>
              </figure>
            </div>
          </div>
          <div class="vc_col-xs-3">
            <div class="vc_column-inner">
              <figure class="wpb_wrapper vc_figure">
                <a href="index.php?page=duan" target="_self" class="vc_single_image-wrapper">
                  <i class="fa fa-line-chart" aria-hidden="true"></i>
                  <p>Dự Án</p>
                </a>
              </figure>
            </div>
          </div>
          <div class="vc_col-xs-3">
            <div class="vc_column-inner">
              <figure class="wpb_wrapper vc_figure">
                <a href="index.php?page=tuyendung" target="_self" class="vc_single_image-wrapper">
                  <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                  <p>Tuyển dụng</p>
                </a>
              </figure>
            </div>
          </div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </div>