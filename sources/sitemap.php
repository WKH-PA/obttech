<?php
header("Content-type: text/xml");
echo '<?xml version="1.0" encoding="UTF-8"?>
	<urlset
	  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
$sitemap = '<url>
	        <loc>'.$fullpath.'</loc>
	        <priority>1.00</priority>
	      </url>';

$arrsitemap = DB_que("SELECT * FROM `#_slug` WHERE `slug` != '26a5258d9e821a119802dbe56307ef17' ORDER BY `id` DESC");
while($row  = mysqli_fetch_array($arrsitemap))
{
    $sitemap .= '<url>
	             <loc>'.$fullpath."/".$row['slug'].'/</loc>
	             <priority>'.sprintf("%.2f",RAND(111,999)/1000).'</priority>
	            </url>';
    // $sitemap .= '<url>
    //      <loc>'.$fullpath."/en/".$row['slug'].'/</loc>
    //      <priority>'.(RAND(111,999)/1000).'</priority>
    //     </url>';
}
$sitemap .= '</urlset>';
echo $sitemap;
?>