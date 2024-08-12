<?php
header("Content-Type: text/xml");

// Bắt đầu tài liệu XML
echo '<?xml version="1.0" encoding="UTF-8"?>';
echo '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ';
echo 'xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" ';
echo 'xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 ';
echo 'http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">';
$sitemap = '<url>
            <loc>'.$fullpath.'/</loc>
            <changefreq>weekly</changefreq>
            <priority>1.0</priority>
          </url>';
// Lấy dữ liệu từ cơ sở dữ liệu
$arrsitemap = DB_que("SELECT * FROM `#_slug` WHERE `slug` != '26a5258d9e821a119802dbe56307ef17' ORDER BY `id` DESC");

while($row = mysqli_fetch_array($arrsitemap))
{
    $sitemap .= '<url>
                  <loc>'.$fullpath.'/'.$row['slug'].'/</loc>
                  <lastmod>'.date('Y-m-d').'</lastmod>
                  <changefreq>weekly</changefreq>
                  <priority>'.(rand(111,999)/1000).'</priority>
                </url>';
}

// Kết thúc tài liệu XML
$sitemap .= '</urlset>';

// Xuất kết quả
echo $sitemap;
?>
