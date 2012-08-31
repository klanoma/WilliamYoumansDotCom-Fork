{include:core/layout/templates/head.tpl}

<div id="content" class="container">
</div>

<!-- Carousel -->
<div id="carousel" class="carousel slide" rel="carousel">
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item">
      <h1 style="width:950px;position:absolute;top:20px;text-align:center;left:50%;margin-left:-480px;line-height:1.2em;font-weight:800;color:#fff;font-size:120px;">WE BUILD WEBSITES</h1>
      <img src="{$THEME_URL}/core/layout/images/city.jpg" />
    </div>
  </div>
  <!-- Carousel navigation -->
  <a class="carousel-control left" href="#carousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#carousel" data-slide="next">&rsaquo;</a>
</div>

<div class="container">


  <div class="row">

    <!-- portfolio item-->
    <div class="span4 project zoom" data-tags="design">

      <a class="thumbnail" href="">
        <!-- image -->
        <img src="http://placehold.it/300x200/222/fff" />
        <!-- name -->
        <b class="project-name">Title</b>
      </a>
    </div>
    <!-- end portfolio item-->

    <!-- portfolio item-->
    <div class="span4 project zoom" data-tags="design">

      <a class="thumbnail" href="">
        <!-- image -->
        <img src="http://placehold.it/300x200/555/fff" />
        <!-- name -->
        <b class="project-name">Title</b>
      </a>
    </div>
    <!-- end portfolio item-->

                <!-- portfolio item-->
    <div class="span4 project zoom" data-tags="design">

      <a class="thumbnail" href="">
        <!-- image -->
        <img src="http://placehold.it/300x200/999/fff" />
        <!-- name -->
        <b class="project-name">Title</b>
      </a>
    </div>
    <!-- end portfolio item-->

  </div>

  <br />

  <div class="row">
    <div class="span4">
      <h2><span class="grey">Work</span> with us</h2>
       <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
      <p><a class="" href="#">Read more &raquo;</a></p>
    </div>
    <div class="span4">
      <h2><span class="grey">Know more</span> about us</h2>
       <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
      <p><a class="" href="#">Read more &raquo;</a></p>
    </div>
    <div class="span4">
      <h2><span class="grey">Meet</span> us</h2>
      <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      <p><a class="" href="#">Read more &raquo;</a></p>
    </div>
  </div>

</div>

{* Page title *}
{option:!hideContentTitle}
  <header class="mainTitle">
    <h1>{$page.title}</h1>
  </header>
{/option:!hideContentTitle}

{* Main position *}
{iteration:positionMain}
  {option:positionMain.blockIsHTML}
    <section class="mod">
      <div class="inner">
        <div class="bd content">
          {$positionMain.blockContent}
        </div>
      </div>
    </section>
  {/option:positionMain.blockIsHTML}
  {option:!positionMain.blockIsHTML}
    {$positionMain.blockContent}
  {/option:!positionMain.blockIsHTML}
{/iteration:positionMain}

{* Left position *}
{iteration:positionLeft}
  {option:positionLeft.blockIsHTML}
    <section class="mod">
      <div class="inner">
        <div class="bd content">
          {$positionLeft.blockContent}
        </div>
      </div>
    </section>
  {/option:positionLeft.blockIsHTML}
  {option:!positionLeft.blockIsHTML}
    {$positionLeft.blockContent}
  {/option:!positionLeft.blockIsHTML}
{/iteration:positionLeft}


{* Right position *}
{iteration:positionRight}
  {option:positionRight.blockIsHTML}
    <section class="mod">
      <div class="inner">
        <div class="bd content">
          {$positionRight.blockContent}
        </div>
      </div>
    </section>
  {/option:positionRight.blockIsHTML}
  {option:!positionRight.blockIsHTML}
    {$positionRight.blockContent}
  {/option:!positionRight.blockIsHTML}
{/iteration:positionRight}

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}