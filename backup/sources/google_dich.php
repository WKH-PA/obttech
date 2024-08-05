<style>
  .prisna-gwt-align-left { text-align: left !important; } 
  .prisna-gwt-align-right { text-align: right !important; } 
  body { top: 0 !important; } 
  .goog-te-banner-frame { display: none !important; visibility: hidden !important; } 
  .goog-tooltip, .goog-tooltip:hover { display: none !important; } 
  .goog-text-highlight { background-color: transparent !important; border: none !important; box-shadow: none !important; }
  .goog-te-gadget-simple { width: 100%; border-top: 1px solid #d5d5d5; }
  .goog-te-gadget-simple > span { width: calc(100% - 25px); display: inline-block; }
  .goog-te-gadget-simple > span > a { display: inline-block; width: 100%; }
  .goog-te-gadget-simple > span > a > span:nth-child(1) { display: inline-block; width: calc(100% - 35px); }.goog-te-gadget-simple > span > a > span:nth-child(1) + img + span { display: none; } 
  .skiptranslate.goog-te-gadget { font-size: 0; line-height: 0px; }
</style>
<script type="text/javascript">
  function myreset(){
    jQuery('#\\:0\\.container').contents().find('#\\:0\\.restore').click();
  }
  // window.MyReset = () => jQuery('#\\:0\\.container').contents().find('#\\:0\\.restore').click();
  // window.MyReset = () => jQuery('#\\:1\\.container').contents().find('#\\:1\\.restore').click();
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'vi', layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT}, 'google_translate_element');
  }
  function triggerHtmlEvent(element, eventName) {
    var event;
    if (document.createEvent) {
      event = document.createEvent('HTMLEvents');
      event.initEvent(eventName, true, true);
      element.dispatchEvent(event);
      } else {
      event = document.createEventObject();
      event.eventType = eventName;
      element.fireEvent('on' + event.eventType, event);
    }
  }
  jQuery('.lang-select').click(function() {
    var theLang = jQuery(this).attr('data-lang');
    jQuery('.goog-te-combo').val(theLang);
    // alert(jQuery(this).attr('href'));
    window.location = "?editor_console="+jQuery(this).attr('href');
    location.reload();

  });
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>