function iOSversion(){if(/iP(hone|od|ad)/.test(navigator.platform)){var e=navigator.appVersion.match(/OS (\d+)_(\d+)_?(\d+)?/);return[parseInt(e[1],10),parseInt(e[2],10),parseInt(e[3]||0,10)]}}function changeUrl(e,t,o,i,n,a,r){if(void 0!==window.history.pushState){var s=document.URL;s!=e&&""!=e&&window.history.pushState({path:e,dataName:n,title:t,keyword:i,description:o,titleog:a,descriptionog:r},"",e)}""!=t&&($("#hdtitle").html(t),$('meta[property="og:description"]').remove(),$("#hdtitle").after('<meta property="og:description" content="'+r+'">'),$('meta[property="og:title"]').remove(),$("#hdtitle").after('<meta property="og:title" content="'+a+'">'),$('meta[property="og:url"]').remove(),$("#hdtitle").after('<meta property="og:url" content="'+e+'">'),$("meta[name=keywords]").remove(),$("#hdtitle").after('<meta name="keywords" content="'+i+'">'),$("meta[name=description]").remove(),$("#hdtitle").after('<meta name="description" content="'+o+'">')),$("#changlanguage_redirect").val(e)}function ResizeWindows(){var e,t,o=$(window).width(),i=$(window).height(),n=i/o,a=.5125,r=.37,s=550/1440,l=2e3/1125;n>a?(t=i,e=i/a):(t=o*a,e=o),$(".scroll-down").css({top:i-90}),1100>=o?(440>=o?$(".slider-home, .bg-home").css({height:(o+100)*a}):o>440&&840>=o?$(".slider-home, .bg-home").css({height:(o+140)*a}):$(".slider-home, .bg-home").css({height:(o+50)*a}),Portrait?$(".slider-inner, .bg-inner").css({height:(o+350)*s}):$(".slider-inner, .bg-inner").css({height:(o+350)*r}),$(".slide-bg").css({transform:"translate3d(0px, 0px, 0px)"}),i/o>=1?$(".box-video-center iframe").length&&$(".box-video-center").css({height:o}):$(".box-video-center iframe").length&&$(".box-video-center").css({height:i/100*80})):o>1100&&($(".slider-home, .bg-home").css({height:i}),$(".slider-inner, .bg-inner").css({height:o*r}),(i-110)*l>o?$(".album-box").addClass("is-portrait"):$(".album-box").removeClass("is-portrait"),$(".box-video-center iframe").length&&$(".box-video-center").css({height:i/100*80}))}function DrawLoad(){var e=$(".load-present"),t=$(e).find("path");$(t).each(function(){var e=this.getTotalLength();(isIE9||isIE10||isIE11||isEdge)&&($(this).css({"stroke-dasharray":e+" "+e}),$(this).css({"stroke-dashoffset":e,"stroke-dasharray":e+" "+e}),$(this).stop().animate({"stroke-dashoffset":0},2e3,"linear",function(){}))})}function ScrollHoz(){var e=$(".sub-nav, .horizon-tab, .scroll-slide");$(window).width()<=1100&&($(e).css({"overflow-x":"auto","overflow-y":"hidden","-ms-touch-action":"auto","-ms-overflow-style":"none",overflow:" -moz-scrollbars-none","-webkit-overflow-scrolling":"touch"}),$(e).animate({scrollLeft:"0px"}),0!=TouchLenght&&isTouchDevice||$(window).width()<=1100&&($(e).mousewheel(function(e,t){e.preventDefault(),$(window).width()<=1100&&(this.scrollLeft-=40*t)}),$(e).addClass("dragscroll"),$(".dragscroll").draptouch()))}function initialize(){function e(){a.setAnimation(null)}function t(){e();var t=document.createElement("div");t.innerHTML="<div class='infobox'><img src='"+infoboximage_distribution+"'  alt='"+infoboxtitle_distribution+"' ><h3> "+infoboxtitle_distribution+"</h3><p>"+infoboxaddress_distribution+"<br>"+i+" "+infoboxphone_distribution+"<br></p></div>";var n={content:t,disableAutoPan:!0,maxWidth:280,pixelOffset:new google.maps.Size(-140,-140),boxStyle:{background:"transparent",opacity:1,width:"280px"},closeBoxMargin:"0",closeBoxzIndex:"99999",closeBoxPosition:"absolute",closeBoxURL:o+"default/images/close3.png",infoBoxClearance:new google.maps.Size(1,1),isHidden:!1,pane:"floatPane",enableEventPropagation:!0},r=new InfoBox(n);r.open(d,a)}var o=($(".httpserver").text(),$(".httptemplate").text()),i=($(".infobox-text-email").text(),$(".infobox-text-tel").text());$(".infobox-text-fax").text(),$(".infobox-text-address").text(),$(".infobox-text-address").text();infoboxaddress_distribution=$(".infobox-address").text(),infoboxlocationlat_distribution=$(".infobox-location-lat").text(),infoboxlocationlng_distribution=$(".infobox-location-lng").text(),infoboximage_distribution=$(".infobox-image").text(),infoboximageicon_distribution=$(".infobox-image-icon").text(),infoboxgooglemap_distribution=$(".infobox-googlemap").text(),infoboxtitle_distribution=$(".infobox-name").text(),infoboxphone_distribution=$(".infobox-phone").text(),infoboxfax_distribution=$(".infobox-fax").text(),infoboxphonetel_distribution=$(".infobox-phone-tel").text(),infoboxemail_distribution=$(".infobox-email").text();var n=new google.maps.LatLng(infoboxlocationlat_distribution,infoboxlocationlng_distribution),a=null,r=[{elementType:"geometry",stylers:[{hue:"#ebe8de"},{saturation:.7},{lightness:20},{gamma:.5},{visibility:"simplified"}]},{elementType:"labels.icon",stylers:[{hue:"#3878c7"}]},{elementType:"labels.text.fill",stylers:[{color:"#3e3623"}]}],s=new google.maps.StyledMapType(r,{name:"Styled Map"}),l={center:n,zoom:13,scrollwheel:!0,draggable:!0,draggingCursor:"move",noclear:!0,disableDefaultUI:!0,disableDoubleClickZoom:!0,clickableIcons:!1,mapTypeControlOptions:{mapTypeIds:[google.maps.MapTypeId.ROADMAP,"map_style"],position:google.maps.ControlPosition.TOP_RIGHT}};if(google.maps.event.addDomListener(window,"resize",function(){$("#map-canvas").length&&(google.maps.event.trigger(d,"resize"),d.setCenter(n),d.setZoom(13))}),$("#map-canvas").length){var d=new google.maps.Map(document.getElementById("map-canvas"),l);d.mapTypes.set("map_style",s),d.setMapTypeId("map_style")}var c=o+"default/images/logo-map.png";a=new google.maps.Marker({map:d,draggable:!1,animation:google.maps.Animation.DROP,position:new google.maps.LatLng(infoboxlocationlat_distribution,infoboxlocationlng_distribution),icon:c}),google.maps.event.addListener(a,"click",t),ZoomControl(d)}function ZoomControl(e){$(".zoom-control a").click(function(){var t=e.getZoom();switch($(this).attr("id")){case"zoom-in":e.setZoom(++t);break;case"zoom-out":e.setZoom(--t)}return!1})}function Done(){$("html, body").scrollTop(0),ResizeWindows(),ScrollHoz(),AnimationDelay(),$(".title-page > h1").lettering("words").children("span").lettering().children("span").lettering(),(isIE9||isIE10||isIE11||isEdge)&&$(".slogan, .member-list, .strategy, .envairoment, .info-box").addClass("no-gradient"),$(".container").stop().animate({opacity:1},300,"linear",function(){ContentLoad(),$("#news-details-page").length||$("#career-page").length||$(".loadicon").fadeOut(500,function(){$(".loadicon").removeClass("loader")})})}function onYouTubeIframeAPIReady(){$(".video-cover").inViewAutoplay({autoplay:0,autohide:1,modestbranding:1,rel:0,loop:1,showinfo:0})}var ua=navigator.userAgent,match=ua.match("MSIE (.)"),versions=match&&match.length>1?match[1]:"unknown",isTouchDevice="ontouchstart"in window||window.DocumentTouch&&document instanceof DocumentTouch||navigator.msMaxTouchPoints>0||navigator.maxTouchPoints>0,isDesktop=0!=$(window).width()&&!isTouchDevice,IEMobile=ua.match(/IEMobile/i),isIE9=/MSIE 9/i.test(ua),isIE10=/MSIE 10/i.test(ua),isIE11=!(!/rv:11.0/i.test(ua)||IEMobile),isEge=/Edge\/12./i.test(navigator.userAgent),isOpera=!!window.opr&&!!opr.addons||!!window.opera||ua.indexOf(" OPR/")>=0,isFirefox="undefined"!=typeof InstallTrigger,isIE=!!document.documentMode,isEdge=!isIE&&!!window.StyleMedia&&!isIE11,isChrome=!!window.chrome&&!!window.chrome.webstore,isBlink=(isChrome||isOpera)&&!!window.CSS,isSafari=Object.prototype.toString.call(window.HTMLElement).indexOf("Constructor")>0||!isChrome&&!isOpera&&void 0!==window.webkitAudioContext,isSafari5=ua.match("Safari/")&&!ua.match("Chrome")&&ua.match(" Version/5."),AndroidVersion=parseFloat(ua.slice(ua.indexOf("Android")+8)),Version=ua.match(/Android\s([0-9\.]*)/i),isIOS8=function(){var e=navigator.userAgent.toLowerCase();return/iphone os 8_/.test(e)},iOS=iOSversion(),ios,android,blackBerry,UCBrowser,Operamini,firefox,windows,smartphone,tablet,touchscreen,all,isMobile={ios:function(){return ua.match(/iPhone|iPad|iPod/i)}(),android:function(){return ua.match(/Android/i)}(),blackBerry:function(){return ua.match(/BB10|Tablet|Mobile/i)}(),UCBrowser:function(){return ua.match(/UCBrowser/i)}(),Operamini:function(){return ua.match(/Opera Mini/i)}(),windows:function(){return ua.match(/IEMobile/i)}(),smartphone:function(){return ua.match(/Android|BlackBerry|Tablet|Mobile|iPhone|iPad|iPod|Opera Mini|IEMobile/i)&&window.innerWidth<=440&&window.innerHeight<=740}(),tablet:function(){return ua.match(/Android|BlackBerry|Tablet|Mobile|iPhone|iPad|iPod|Opera Mini|IEMobile/i)&&window.innerWidth<=1366&&window.innerHeight<=800}(),all:function(){return ua.match(/Android|BlackBerry|Tablet|Mobile|iPhone|iPad|iPod|Opera Mini|IEMobile/i)}()};if(isTouchDevice&&null!==isMobile.all)var TouchLenght=!0;else if(isMobile.tablet&&isFirefox||isMobile.smartphone&&isFirefox)var TouchLenght=!0;else var TouchLenght=!1;isMobile.Operamini&&alert("Please disable Data Savings Mode");var animationEnd="webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend",Loadx=0,Portrait=$(window).height()>=$(window).width(),Landscape=$(window).height()<$(window).width();!function(e){e.fn.impulse=function(t){function o(){m=p;var t=Date.now(),i=Math.min(t-$,v),a=i/v,r=e.easing[P[b]](a,i,0,1,v);f.each(function(t){if(!A[t]){var o=L[t]+r*w;e(this).scrollTop(o),n(e(this),t,a)}}),1>a&&!g?x=requestAnimationFrame(o):h=!1}function i(){m=p,f.each(function(t){A[t]||e(this).stop().animate({scrollTop:_[t]},{duration:v,easing:P[b],progress:function(o,i){n(e(this),t,i)},complete:function(){h=!1}})})}function n(e,t,o){100*o>=E.reset&&(C=0),a(e,t)&&(A[t]=!0,B||e.stop(!0,!0),r()&&(g=!0,C=0))}function a(e,t){var o=e.scrollTop(),i=0==o&&_[t]<0,n=o==O[t]&&_[t]>O[t];return i||n}function r(){return A.every(function(e){return e})}function s(){var t,o=e();M.length||(u=!0,M=I),M.each(function(){l(this)?t||(o=B?o.add(T):o.add(d()),t=!0):o=o.add(e(this))}),E.target=M=o,M.each(function(e){l(this)?k[e]="hub":k[e]="sub"}),u&&I.length!=M.length&&(I=M)}function l(e){var t=[window,document,"HTML","BODY"];return t.indexOf(e)>-1||t.indexOf(e.tagName)>-1}function d(){var t=T.scrollTop();if(T.scrollTop(1),e("html").scrollTop())var o=e("html");else o=e(e("body").scrollTop()?"body":"html, body");return t?T.scrollTop(t):T.scrollTop(0),o}function c(){M.each(function(t){"hub"==k[t]?S[t]=e(document).height()-T.height():S[t]=this.scrollHeight-e(this).height()})}var u,h,f,m,g,p,b,w,v,x,$,y,T=e(window),E=e.extend(!0,{target:e(),delay:!1},e.fn.impulse["default"],t),I=this,M=E.target,k={},S=[],O=[],L=[],A=[],C=0,P=[],_=[];if(window.requestAnimationFrame)var B=!0;return s(),c(),I.each(function(t){var n=e(".container");e(n).mousewheel(function(n,a){return h?!1:(1==E.delay&&(h=!0),b=t,u&&I.length>1?(f=e(this),O[0]=S[b]):(f=M,O=S),f.each(function(t){var o=L[t]=e(this).scrollTop();1==a&&0==o||-1==a&&o==O[t]?A[t]=!0:A[t]=!1}),r()?(h=!1,1==E.propagate?void 0:!1):(C=m!=a?1:Math.min(E.constrain,C+1),E.fluid&&1==C?P[b]="curve":C&&(P[b]=E.effect),g=!1,p=a,w=-a*E.range*Math.pow(E.leap,C-1),v=E.tempo*Math.pow(E.sloth,C-1),f.each(function(e){_[e]=L[e]+w}),B?(x&&cancelAnimationFrame(x),$=Date.now(),x=requestAnimationFrame(o)):i(),!1))})}),T.resize(function(){clearTimeout(y),y=setTimeout(c,100)}),this},e.fn.impulse["default"]={range:145,leap:1.45,tempo:500,sloth:1.1,constrain:5,reset:85,effect:"easeOutSine",fluid:!1,propagate:!0}}(jQuery),$(document).ready(function(){var e=$(".httpserver").text();if(isFirefox||$("head").append('<link rel="stylesheet" href="'+e+'catalog/view/theme/default/css/webkit.css" type="text/css" >'),(isIE9||isIE10||isIE11||isEdge)&&$("head").append('<link rel="stylesheet" href="'+e+'catalog/view/theme/default/css/ie.css" type="text/css" >'),ResizeWindows(),(isIE9||isIE10||isIE11)&&$("body").addClass("is-IE"),$(".loadicon").hasClass("loader")||($(".loadicon").show(),$(".loadicon").addClass("loader"),DrawLoad()),$("html, body").scrollTop(0),setTimeout(function(){0==Loadx&&(Loadx=1,Done())},1500),$("body").imagesLoaded({background:!0},function(){}),$("body").impulse({effect:"easeOutQuad"}),$("#project-details-page").length){var t=$(".bg-home").css("background-image");if(t){var o=t.replace(/(^url\()|(\)$|[\"\'])/g,""),i=$(".bg-home").parent();$(i).append('<div class="corlor-fill"></div>'),$(".bg-home").append('<img src="'+o+'" />'),$(".bg-home").imagesLoaded(function(){$(".bg-home img").each(function(e,t){var o=new getAverageRGB(t),i="rgba("+o.r+","+o.g+","+o.b+", 0.5)";$(".item-container .corlor-fill").css({"background-color":i})})})}}}),function(e){"function"==typeof define&&define.amd?define(["jquery"],e):"object"==typeof exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){function t(){var t,o,i={height:d.innerHeight,width:d.innerWidth};return i.height||(t=l.compatMode,!t&&e.support.boxModel||(o="CSS1Compat"===t?c:l.body,i={height:o.clientHeight,width:o.clientWidth})),i}function o(){return{top:d.pageYOffset||c.scrollTop||l.body.scrollTop,left:d.pageXOffset||c.scrollLeft||l.body.scrollLeft}}function i(){if(s.length){var i=0,r=e.map(s,function(e){var t=e.data.selector,o=e.$element;return t?o.find(t):o});for(n=n||t(),a=a||o();i<s.length;i++)if(e.contains(c,r[i][0])){var l=e(r[i]),d={height:l[0].offsetHeight,width:l[0].offsetWidth},u=l.offset(),h=l.data("inview");if(!a||!n)return;u.top+d.height>a.top&&u.top<a.top+n.height&&u.left+d.width>a.left&&u.left<a.left+n.width?h||l.data("inview",!0).trigger("inview",[!0]):h&&l.data("inview",!1).trigger("inview",[!1])}}}var n,a,r,s=[],l=document,d=window,c=l.documentElement;e.event.special.inview={add:function(t){s.push({data:t,$element:e(this),element:this}),!r&&s.length&&(r=setInterval(i,250))},remove:function(e){for(var t=0;t<s.length;t++){var o=s[t];if(o.element===this&&o.data.guid===e.guid){s.splice(t,1);break}}s.length||(clearInterval(r),r=null)}},e(d).on("scroll resize scrollstop",function(){n=a=null}),!c.addEventListener&&c.attachEvent&&c.attachEvent("onfocusin",function(){a=null})}),function(e){e.fn.inViewAutoplay=function(t){if(e("#video-youtube").length){var o=e("#video-youtube").attr("src"),i=/(?:youtube(?:-nocookie)?\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})/,n=o.match(i)[1];e("#videocontainer");return this.filter("[id]").each(function(){function o(o){var n=o.target;e(n.getIframe()).bind("inview",{player:n},i),t.quality&&n.setPlaybackQuality(t.quality)}function i(e,t){1==t?e.data.player.playVideo():e.data.player.pauseVideo()}new YT.Player(this.getAttribute("id"),{width:"100%",height:"100%",videoId:n,playerVars:t,events:{onReady:o}})})}}}(window.jQuery||window.Zepto);var tag=document.createElement("script");tag.src="https://www.youtube.com/player_api";var firstScriptTag=document.getElementsByTagName("script")[0];firstScriptTag.parentNode.insertBefore(tag,firstScriptTag);