<style>
  .dv-hot-line { position: fixed; bottom: 105px; right: 125px; z-index: 999; height: 40px;; top: auto !important;}
  .dv-hot-line .ontt, .dv-zalo .ontt {position: relative;}
  .dv-hot-line a, .dv-zalo a { position: initial; top: auto; bottom: auto; left: -30px; width: 120px; height: 120px; }
  .dv-hot-line h2 { position: relative; left: 50px !important; line-height: 40px; bottom: auto; white-space: nowrap;width: 200px;}
  .dv-hot-line .dmd-phone h2 { border-radius: 1000px; }
  .dv-hot-line .dmd-ph-img-circle { top: -0px; left: 50px; }
  .dv-hot-line .dmd-ph-circle-fill { top: -20px; left: 30px; }
  .dv-hot-line .dmd-ph-circle { top: -40px; left: 10px; }
  .dv-zalo { position: fixed; bottom: 185px; right: 125px; z-index: 999; height: 40px;; top: auto !important;}
  .dv-zalo .dmd-zl-img-circle { top: -0px; left: 50px; }
  .dv-zalo .dmd-zl-circle-fill { top: -20px; left: 30px; }
  .dv-zalo .dmd-zl-circle { top: -40px; left: 10px; }
  @media only screen and (max-width: 767px) {
    .dmd-phone h2 { font-size: 16px; height: 35px; line-height: 35px; width: 175px !important; }
  }
</style>
        <style>
            .dmd-zl-circle {
                width: 120px;
                height: 120px;
                top: 40px;
                left: 40px;
                position: absolute;
                background-color: transparent;
                -webkit-border-radius: 100%;
                -moz-border-radius: 100%;
                border-radius: 100%;
                border: 2px solid rgba(30, 30, 30, 0.4);
                border: 2px solid #2196f3;
                -webkit-animation: dmd-circle-anim 1.2s infinite ease-in-out;
                -moz-animation: dmd-circle-anim 1.2s infinite ease-in-out;
                -ms-animation: dmd-circle-anim 1.2s infinite ease-in-out;
                -o-animation: dmd-circle-anim 1.2s infinite ease-in-out;
                animation: dmd-circle-anim 1.2s infinite ease-in-out;
                -webkit-transition: all .5s;
                -moz-transition: all .5s;
                -o-transition: all .5s;
                transition: all .5s;
                -webkit-transform-origin: 50% 50%;
                -moz-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                -o-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
            }
            .dmd-zl-circle-fill {
                width: 80px;
                height: 80px;
                top: 60px;
                left: 60px;
                position: absolute;
                background-color: #2196f3;
                -webkit-border-radius: 100%;
                -moz-border-radius: 100%;
                border-radius: 100%;
                border: 2px solid transparent;
                -webkit-animation: dmd-circle-fill-anim 2.3s infinite ease-in-out;
                -moz-animation: dmd-circle-fill-anim 2.3s infinite ease-in-out;
                -ms-animation: dmd-circle-fill-anim 2.3s infinite ease-in-out;
                -o-animation: dmd-circle-fill-anim 2.3s infinite ease-in-out;
                animation: dmd-circle-fill-anim 2.3s infinite ease-in-out;
                -webkit-transition: all .5s;
                -moz-transition: all .5s;
                -o-transition: all .5s;
                transition: all .5s;
                -webkit-transform-origin: 50% 50%;
                -moz-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                -o-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
            }
            .dmd-zl-img-circle {
                width: 40px;
                height: 40px;
                top: 80px;
                left: 80px;
                position: absolute;
                background: rgba(30,30,30,0.1) url("../images/zalo2.png") no-repeat center center;
                -webkit-background-size: 80%;
                background-size: 80%;
                -webkit-border-radius: 100%;
                -moz-border-radius: 100%;
                border-radius: 100%;
                border: 2px solid transparent;
                -webkit-animation: dmd-circle-img-anim 1s infinite ease-in-out;
                -moz-animation: dmd-circle-img-anim 1s infinite ease-in-out;
                -ms-animation: dmd-circle-img-anim 1s infinite ease-in-out;
                -o-animation: dmd-circle-img-anim 1s infinite ease-in-out;
                animation: dmd-circle-img-anim 1s infinite ease-in-out;
                -webkit-transform-origin: 50% 50%;
                -moz-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                -o-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
            }
            .dmd-phone.dmd-green .dmd-zl-circle {
                border-color: #2196f3;
                opacity: .5;
            }
            .dmd-phone.dmd-green .dmd-zl-circle-fill {
                background-color: #2196f3;
                opacity: .0 !important;
            }
            .dmd-phone.dmd-green .dmd-zl-img-circle {
                background-color: #2196f3;
            }
        </style>
        <div class="dv-zalo no_box">
            <div class="ontt">
                <a href="<?=$glo_lang['call_zalo']?>" class="popup dmd-phone dmd-green dmd-show mobile" title="Hotline">
                    <div class="dmd-zl-circle"></div>
                    <div class="dmd-zl-circle-fill"></div>
                    <div class="dmd-zl-img-circle"></div>
                </a>
            </div>
        </div>
<div class="dv-hot-line no_box">
  <div class="ontt">
  <a href="tel:<?=$thongtin['hotline_vi'] ?>" class="popup dmd-phone dmd-green dmd-show mobile" title="Hotline">
    <!-- <h2><?=$thongtin['hotline_'.$lang] ?></h2> -->
    <div class="dmd-ph-circle"></div>
    <div class="dmd-ph-circle-fill"></div>
    <div class="dmd-ph-img-circle"></div>
    </a>
  </div>
</div>