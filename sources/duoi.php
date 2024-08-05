<div class="clr"></div>
<?php include _source . "footer.php"; ?>
</div>
</article>
</section>
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/animation.css" rel="stylesheet" type="text/css">
<!-- <script type="text/javascript" src="js/jquery.carouFredSel.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.masonry.min.js"></script> -->
<!-- <script type="text/javascript" src="js/wow.min.js"></script> -->
<script type="text/javascript" src="js/owl.carousel.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        new WOW().init();
    })

    var topH = 0;//$(".top_header").height();
    $(window).scroll(function () {
        if ($(this).scrollTop() > topH) {
            $('.bg_menu_top').addClass("fixed");
        } else {
            $('.bg_menu_top').removeClass("fixed");
        }
    });
</script>

<!-- <link href="css/divbox.css" rel=stylesheet>
<script type="text/javascript" src="js/divbox.js"></script>
<script>
	$('a.lightbox').divbox();
</script> -->
<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
<!-- <script src='menu_mb/jquery.mmenu.min.js?v=1' type='text/javascript'></script> -->
<script type="text/javascript" language="javascript" src="js/me.js?v=<?= time() ?>"></script>

<?php if (!empty($slug_step)) { ?>
    <script>$(".active_mn_<?=$slug_step ?>").addClass("acti")</script>
<?php } else { ?>
    <script>
        var url_new = "<?=$full_url . ($motty != "" ? "/" . $motty : "") ?>";
        $(".active_mn_01").each(function () {
            var href = $(this).attr("href");
            if (href == url_new) {
                $(this).addClass("acti");
                return false;
            }
        });
    </script>
<?php } ?>
<div class="dv-idvideo-youtube-cont" onclick="close_video_tb()">
    <div class="dv-idvideo-youtube">
        <iframe id="player" allow="autoplay; encrypted-media" frameborder="0" allowfullscreen=""
                data-gtm-yt-inspected-1070012_61="true" data-gtm-yt-inspected-1070012_79="true"></iframe>
        <a class="close_vdeo" onclick="close_video_tb()"></a></div>
</div>
<script>
    $("nav#menu").mmenu({"navbars": [{content: ['prev', 'close']},]});
    $(function () {
        $('.btn_menu').hover(function () {
            $(".btn_menu").trigger("click");
        });
    });
</script>
</body>
</html>