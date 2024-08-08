<?php
header("Content-Type: text/xml");
echo '<?xml version="1.0" encoding="UTF-8"?>
    <urlset
      xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
$sitemap = '<url>
            <loc>'.$fullpath.'/</loc>
            <priority>1.0</priority>
            <lastmod>2024-08-08</lastmod>
            <changefreq>weekly</changefreq>
          </url>';
$arrsitemap = DB_que("SELECT * FROM `#_slug` WHERE `slug` != '26a5258d9e821a119802dbe56307ef17' ORDER BY `id` DESC");
while($row = mysqli_fetch_array($arrsitemap))
{
    $sitemap .= '<url>
                 <loc>'.$fullpath."/".$row['slug'].'/</loc>
                 <priority>'.(rand(111,999)/1000).'</priority>
                 <lastmod>2024-05-30</lastmod>
                 <changefreq>weekly</changefreq>
                </url>';
}
$sitemap .= '</urlset>';
echo $sitemap;
?>