<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  
  <link href="catalog/view/javascript/jquery/slick/slick.css" rel="stylesheet">
  <link href="catalog/view/javascript/jquery/slick/slick-theme.css" rel="stylesheet">
  <link href="catalog/view/javascript/jquery/smoke/css/smoke.min.css" rel="stylesheet">
  <link href="catalog/view/javascript/jquery/ionrange/css/ion.rangeSlider.css" rel="stylesheet">
  <link href="catalog/view/javascript/jquery/ionrange/css/ion.rangeSlider.skinNice.css" rel="stylesheet">
  <link href="catalog/view/javascript/jquery/ionrange/css/normalize.css" rel="stylesheet">
    <link href="catalog/view/javascript/owlcarousel/owl.carousel.min.css" rel="stylesheet">

  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/styles.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/media.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" title="default"  href="catalog/view/theme/default/stylesheet/colours.css">
  <script async src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <script async src="catalog/view/javascript/callback.js" type="text/javascript"></script>
  <script async src="catalog/view/javascript/AjaxModalLoginRegister.js" type="text/javascript"></script>
  <script async src="catalog/view/javascript/smart_pagination.js" type="text/javascript"></script>
  <script src="catalog/view/javascript/underscore.js" type="text/javascript" ></script>
  <script src="https://api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU"></script>
    <script async src="catalog/view/javascript/owlcarousel/owl.carousel.min.js" type="text/javascript"></script>
  <?php foreach ($scripts as $script) { ?>
    <script defer src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
 
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container" id="top-links">
    <div class="nav pull-left col-sm-6 col-xs-6">
      <?php echo $language; ?>
    <button class="pull-left hidden-lg hidden-sm hidden-md btn-inf dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-target="#dm">
    <i class="icon-info">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="10 0 70 80" enable-background="new 0 0 90 65" xml:space="preserve">
<g>
	<g>
		<path id="Info" fill="#4884E6" d="M45,0C27.1,0,12.5,14.6,12.5,32.5C12.5,50.4,27.1,65,45,65s32.5-14.6,32.5-32.5C77.5,14.6,62.9,0,45,0z
			 M45,62.1c-16.3,0-29.6-13.3-29.6-29.6C15.4,16.2,28.7,2.9,45,2.9c16.3,0,29.6,13.3,29.6,29.6S61.3,62.1,45,62.1z"/>
		<path id="Info" fill="#4884E6" d="M44.8,21.9c-1.2,0-2.2,1-2.2,2.2v24.7c0,1.2,1,2.2,2.2,2.2c1.2,0,2.2-1,2.2-2.2V24.1
			C47,22.9,46,21.9,44.8,21.9z"/>
		<circle Id="info" fill="#4884E6" cx="44.9" cy="15.8" r="2.7"/>
	</g>
</g>
</svg>
    </i><span class="hidden-sm hidden-md visible-xs"><?php echo $text_information; ?></span>
    </button>
    <div id="dm">
      <ul class="dropdown-menu " aria-labelledby="dropdownMenu1">
          <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
      </ul>
    </div>
      <ul class="list-inline list_inf hidden-xs">
        <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
      </ul>
      <span class="phones-sm dropdown-toggle" id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-phone" aria-hidden="true"></i>
        <span class="caret"></span>
      </span>
      <?php if($phones) { ?>
      <div class="dropdown-menu phones-sm-dropdown" aria-labelledby="dLabel">
        <?php foreach($phones as $phone) { ?>
        <a href="tel:+<?php echo $phone; ?>" class="Blondie header"><?php echo $phone; ?></a>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
   
    <div class="nav pull-right col-sm-6 col-xs-6 text-right" style="padding:0;">
      <ul class="list-inline">
        <li class="compare" data-toggle="tooltip" data-placement="bottom" title="<?php echo $text_compare; ?>">
          <a href="<?php echo $compare; ?>"><span class="counter"><?php echo $compare_counter; ?></span><i class="fa fa-exchange"></i></a>
        </li>
        <li class="wishlist" data-toggle="tooltip" data-placement="bottom" title="<?php echo $text_wishlist; ?>">
          <a href="<?php echo $wishlist; ?>"><i class="icon_wishlist">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 466.3 466.3" enable-background="new 0 0 466.3 466.3" xml:space="preserve">
<g>
	<path id="Wishlist" fill="#4884E6" d="M326.5,17.7c-34.5,0-67.8,13.4-93.3,37.3c-25.5-23.8-58.9-37.3-93.3-37.3C62.7,17.7,0,83.1,0,163.5
		c0,20.2,3.3,40.6,9.8,60.8c0.2,0.7,5.6,17.2,10.7,27.1c23.1,49.7,65,97.7,124.5,142.9c44.1,33.4,81,52.3,82.5,53
		c1.8,0.9,3.7,1.4,5.6,1.4s3.9-0.4,5.6-1.4c1.6-0.8,38.5-19.6,82.5-53C380.9,349,422.9,300.9,446,251.2c0,0,0-0.1,0.1-0.1
		c0.3-0.7,7.3-16.2,10.6-26.9c6.5-21.4,9.7-41.3,9.7-60.6C466.3,83.1,403.6,17.7,326.5,17.7z M432.7,216.8
		c-2.7,8.8-8.9,22.8-9.4,23.9c-26.6,57.1-78.1,104.1-116.7,133.4c-32.5,24.7-61.6,41.5-73.4,47.9c-11.9-6.5-40.9-23.2-73.4-47.9
		C121.2,344.7,69.6,297.8,43,240.6c-0.1-0.2-0.2-0.3-0.2-0.5c-3.4-6.6-7.8-19.2-9.2-23.5C27.9,198.9,25,181,25,163.5
		C25,96.9,76.5,42.7,139.8,42.7c31.7,0,62.3,14,84,38.4c2.4,2.7,5.8,4.2,9.4,4.2l0,0c3.6,0,7-1.5,9.4-4.2c22-24.8,51.8-38.4,84-38.4
		c63.3,0,114.8,54.2,114.8,120.8C441.3,180.3,438.5,197.8,432.7,216.8z"/>
</g>
</svg></i>&nbsp<span class="counter"><?php echo $wishlist_counter; ?></span>&nbsp<span class="wishlist-txt"><?php echo $text_wishlist; ?></span></a>
        </li>
        <?php if ($logged) { ?>
          <li><a href="<?php echo $account; ?>"><i class="icon-user">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 90 65" enable-background="new 0 0 90 65" xml:space="preserve">
<g id="_x37_7_Essential_Icons_70_">
	<path id="User" fill="#4884E6" d="M52.8,34.3c5.4-3.3,8.9-9.9,8.9-16C61.7,9.7,54.6,0,45,0S28.3,9.7,28.3,18.3
		c0,6.1,3.5,12.7,8.9,16C24.4,37.8,15,49.5,15,63.3c0,0.9,0.8,1.7,1.7,1.7h56.7c0.9,0,1.7-0.8,1.7-1.7C75,49.5,65.6,37.8,52.8,34.3z
		 M31.7,18.3c0-8.6,7.1-15,13.3-15s13.3,6.4,13.3,15s-7.1,15-13.3,15S31.7,26.9,31.7,18.3z M18.4,61.7c0.8-13.9,12.5-25,26.6-25
		s25.8,11.1,26.6,25H18.4z"/>
</g>
</svg>
</i><span class="login-txt"><?php echo $text_logged; ?></span></a></li>
        <?php } else { ?>
          <li class="login_li"><a href="javascript: void(null);" data-toggle="modal" data-target="#login_register"><i class="icon-user">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 90 65" enable-background="new 0 0 90 65" xml:space="preserve">
<g id="_x37_7_Essential_Icons_70_">
	<path id="User" fill="#4884E6" d="M52.8,34.3c5.4-3.3,8.9-9.9,8.9-16C61.7,9.7,54.6,0,45,0S28.3,9.7,28.3,18.3
		c0,6.1,3.5,12.7,8.9,16C24.4,37.8,15,49.5,15,63.3c0,0.9,0.8,1.7,1.7,1.7h56.7c0.9,0,1.7-0.8,1.7-1.7C75,49.5,65.6,37.8,52.8,34.3z
		 M31.7,18.3c0-8.6,7.1-15,13.3-15s13.3,6.4,13.3,15s-7.1,15-13.3,15S31.7,26.9,31.7,18.3z M18.4,61.7c0.8-13.9,12.5-25,26.6-25
		s25.8,11.1,26.6,25H18.4z"/>
</g>
</svg>
</i><span class="login-txt"><?php echo $text_login; ?></span></a></li>
        <?php } ?>
        <?php echo $currency; ?>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-lg-2 col-sm-3 col-xs-3 logo">
        <div id="logo">
          <?php if ($_SERVER['REQUEST_URI'] == '/' || $_SERVER['REQUEST_URI'] == '/index.html?route=common/home') { ?>
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
          <?php } else { ?>
            <a href="<?php echo $home; ?>">
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
            </a>
          <?php } ?>
        </div>
      </div>
      <div class="col-lg-4 col-sm-3 search">
      	<?php echo $search; ?>
      </div>

      <div class="location col-lg-2 col-sm-3 pull-left hide">
        
      </div>

        <div class="col-sm-2 col-xs-3 text-center phones">
      	 <?php if($phones) { ?>
          <div>
            <?php foreach($phones as $phone) { ?>
            <a href="tel:+<?php echo $phone; ?>" class="Blondie header"><?php echo $phone; ?></a>
              <!-- <?php echo $phone . '<br>'; ?> -->
            <?php } ?>
          </div>
        <?php } ?>
	</div>
	<div class="col-sm-2 col-xs-3 text-center callback">
	  <?php if ($open) { ?>
              <p class="grafic">
                
              </p>
          <?php } ?>
	 <a class="btn btn_callback" href="javascript: void(null);" data-toggle="modal" data-target="#callback"><i class="icon-phone">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 90 65" enable-background="new 0 0 90 65" xml:space="preserve">
<g>
	<g>
		<path id="Phone" fill="#4884E6" d="M76,51.4l-10-10c-2-2-5.3-1.9-7.4,0.1l-5.1,5.1c-0.3-0.2-0.7-0.4-1-0.6c-3.2-1.8-7.6-4.2-12.2-8.8
			c-4.6-4.6-7-9-8.8-12.2c-0.2-0.3-0.4-0.7-0.5-1l3.4-3.4l1.7-1.7c2.1-2.1,2.1-5.4,0.1-7.4l-10-10c-2-2-5.3-1.9-7.4,0.1L16,4.5
			l0.1,0.1c-0.9,1.2-1.7,2.6-2.3,4.1c-0.5,1.4-0.9,2.8-1,4.2c-1.3,11,3.7,21,17.3,34.7c18.8,18.8,34,17.4,34.7,17.3
			c1.4-0.2,2.8-0.5,4.2-1.1c1.5-0.6,2.9-1.4,4.1-2.3l0.1,0.1l2.9-2.8C78,56.7,78,53.4,76,51.4z M73.7,56.5l-1.3,1.3l-0.5,0.5
			c-0.8,0.8-2.2,1.8-4.2,2.6c-1.1,0.4-2.3,0.7-3.4,0.9c-0.1,0-14.4,1.2-32.1-16.4c-15-15-17.4-23.7-16.4-32.1
			c0.1-1.1,0.4-2.2,0.9-3.4c0.8-2,1.9-3.4,2.6-4.2l1.7-1.8C21.9,3.1,23.2,3,24,3.8l10,10c0.8,0.8,0.7,2.1-0.1,2.9l-6.8,6.8l0.6,1.1
			c0.3,0.6,0.7,1.2,1.1,2c1.9,3.4,4.4,8,9.3,12.9c4.9,4.9,9.5,7.5,12.9,9.3c0.7,0.4,1.4,0.8,2,1.1l1.1,0.6l6.8-6.8
			c0.8-0.8,2.2-0.9,2.9-0.1l10,10C74.6,54.4,74.5,55.7,73.7,56.5z"/>
	</g>
</g>
</svg>
</i><span class=""><?php echo $text_callback; ?></span></a>
	</div>
      <div class="col-sm-2 col-xs-3 cart text-right">
      <?php echo $cart; ?>
      <!-- GEO start -->        
      <div class="city ">
        <p class="my-header-geo fa fa-map-marker" onclick="showGeo();"><button class="my-geo-city-button"><span id="my-geo-city-button"><a href="/" onclick="return false" class="link-location"><?php echo $your_city; ?></a></span></button>
        <a id="this-my-geo"></a></p>
        <div class="my-geo-quest">
          <p class="my-time-geo"></p>
          <span class="my-geo-yes"><?php echo $your_city_yes; ?></span>
          <span class="my-geo-no"><span class="my-geo-no-text"><?php echo $your_city_no; ?></span></span>
        </div>
      </div>
      <script type="text/javascript">
      var np_api_key = '<?php echo $np_api_key; ?>';
      </script>
      <!-- GEO finish -->
        
      </div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
  <div class="container">
    <nav id="menu" class="navbar default">
      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
      </div>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
              <li class="dropdown"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

                <div class="dropdown-menu">
                  <div class="dropdown-inner">
                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                      <ul class="list-unstyled">
                        <?php foreach ($children as $child) { ?>
                          <li>
                            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                            <?php if (!empty($child['children'])) { ?>
                              <ul>
                                <?php foreach ($child['children'] as $level_3) { ?>
                                  <li><a href="<?php echo $level_3['href']; ?>"><?php echo $level_3['name']; ?></a></li>
                                <?php } ?>
                              </ul>
                            <?php } ?>
                          </li>
                        <?php } ?>
                      </ul>
                    <?php } ?>
                  </div>
                </div>
              </li>
            <?php } else { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          <?php } ?>
        </ul>
      </div>
    </nav>
  </div>
<?php } ?>

<script type="text/html" id="geo-list">
<div class="my-geo-main-block">
  <button onclick="$('.my-geo-quest').toggle(200);" class="my-close-geo"><span class="fa fa-times"></span></button>
  <p class="my-geo-main-heading"><?php echo $select_your_city; ?></p>
  <ul class="my-geo-list-ul">
    <li><?php echo $your_city_kiev; ?></li>
    <li><?php echo $your_city_charkov; ?></li>
    <li><?php echo $your_city_lviv; ?></li>
    <li><?php echo $your_city_dnepr; ?></li>
  </ul>
  <label class="my-geo-main-label"><?php echo $select_your_city_other; ?></label>
  <input class="my-geo-main-input" type="text" placeholder="<?php echo $your_city_placeholder; ?>">
  <div class="my-geo-live-block"></div>
  <p class="my-geo-main-bottom-text">
    <?php echo $your_city_info; ?>
  </p>
</div>
</script>
<script>
$(document).ready(function(){
$(document).delegate('.my-geo-main-input','keyup', function(e) {
if ($(this).val().length > 1){
getCity.getNew($(this).val());
}
if(e.keyCode == 40) {
$('.test-focus:first-child').focus();
}
});
$(document).delegate('.test-focus','keyup', function(e) {
if(e.keyCode == 40) {
console.log($('.test-focus').next('a'));
$('.test-focus').next('.test-focus').focus();
}
});
})
</script>