<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
<!-- <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600&display=swap" rel="stylesheet"> -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600&display=swap" rel="stylesheet">


<link href="css/style.css?v=<?=time() ?>" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css" />
<link href="css/animate.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.caroufredsel.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<script type="text/javascript" src="js/jquery.mmenu.all.js"></script>

<?=$thongtin['font_link'] ?>
<style type="text/css">
<?php if($thongtin['font_name'] != ""){ ?>
* { font-family: "<?=str_replace("+", " ",$thongtin['font_name']) ?>" !important }
.fa {font-family: "FontAwesome" !important;}
<?php } ?>
<?php if($thongtin['css_pc'] != ""){ ?>
<?=$thongtin['css_pc'] ?>
<?php } ?>

<?php if($thongtin['css_mb'] != ""){ ?>
@media only screen and (max-width: 767px) and (max-width: 479px) {
<?=$thongtin['css_mb'] ?>
}
<?php } ?>
</style>