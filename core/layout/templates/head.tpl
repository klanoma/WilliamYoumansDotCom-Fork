<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="{$LANGUAGE}" class="ie6"> <![endif]-->
<!--[if IE 7 ]> <html lang="{$LANGUAGE}" class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="{$LANGUAGE}" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="{$LANGUAGE}" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{$LANGUAGE}"> <!--<![endif]-->
  <head>
    {* Meta *}
    <meta charset="utf-8" />
    <meta name="author" content="William Youmans" />
    <meta name="publisher" content="William Youmans" />
    <meta name="robots" content="index, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    {$meta}
    {$metaCustom}

    <title>{$pageTitle}</title>

    {* Favicons and Apple touch icons *}
    <!-- For retina-display iPads -->
    <link href="{$THEME_URL}/apple-touch-icon-xlarge.png" rel="apple-touch-icon-precomposed" sizes="144x144" type="image/png"/>
    <!-- For retina-display iPhones -->
    <link href="{$THEME_URL}/apple-touch-icon-large.png" rel="apple-touch-icon-precomposed" sizes="114x114" type="image/png"/>
    <!-- For iPad 1 -->
    <link href="{$THEME_URL}/apple-touch-icon-medium.png" rel="apple-touch-icon-precomposed" sizes="72x72" type="image/png"/>
    <!-- For iPhone 3G, iPod Touch and Android -->
    <link href="{$THEME_URL}/apple-touch-icon.png" rel="apple-touch-icon-precomposed" type="image/png"/>
    <!-- For Nokia -->
    <link href="{$THEME_URL}/apple-touch-icon.png" rel="shortcut icon"/>
    <!-- For everything else -->
    <link href="{$THEME_URL}/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="{$THEME_URL}/favicon.ico" rel="shortcut icon" type="image/x-icon"/>

    {* Stylesheets *}
    {iteration:cssFiles}
      <link rel="stylesheet" href="{$cssFiles.file}" />
    {/iteration:cssFiles}

    <!--[if lt IE 8]> <link rel="stylesheet" href="{$THEME_URL}/core/layout/css/ie7.css" /> <![endif]-->

    <!-- Load Open sans from Google Font Directory -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet" type="text/css">

    {* HTML5 Javascript *}
    <!--[if lt IE 9]> <script src="{$THEME_URL}/core/js/html5.js"></script> <![endif]-->

    {* Site wide HTML *}
    {$siteHTMLHeader}
  </head>
  <body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
    <header id="header">
      <div class="navbar">
        <div class="navbar-inner">
          <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a>
            <div class="brand-wrapper">
              <a class="brand" href="/">
                {$siteTitle}<br>
                <span class="subheading">web developer – world traveler</span>
              </a>
            </div>
            <div class="nav-collapse">
              {* Navigation *}
              {$var|getnavigation:'page':0:1}
            </div><!--/.nav-collapse -->
          </div><!-- end .container -->
        </div><!-- end .navbar-inner -->
      </div><!-- end .navbar -->
    </header>

    {* Breadcrumb *}
    {* {include:core/layout/templates/breadcrumb.tpl} *}