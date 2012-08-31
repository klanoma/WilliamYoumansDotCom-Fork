{include:core/layout/templates/head.tpl}

<div id="content" class="container">
</div>

<!-- Carousel -->
<div id="carousel" class="carousel slide" rel="carousel">
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item">
      <h1 style="width:950px;position:absolute;top:20px;text-align:center;left:50%;margin-left:-480px;line-height:1.2em;font-weight:800;color:#fff;font-size:120px;">I BUILD WEBSITES</h1>
      <img src="{$THEME_URL}/core/layout/images/home/mountains.jpg" />
    </div>
    <div class="item">
      <h1 style="width:950px;position:absolute;top:20px;text-align:center;left:50%;margin-left:-480px;line-height:1.2em;font-weight:800;color:#fff;font-size:120px;">I BUILD WEBSITES</h1>
      <img src="{$THEME_URL}/core/layout/images/home/mountains.jpg" />
    </div>
    <div class="item">
      <h1 style="width:950px;position:absolute;top:20px;text-align:center;left:50%;margin-left:-480px;line-height:1.2em;font-weight:800;color:#fff;font-size:120px;">I BUILD WEBSITES</h1>
      <img src="{$THEME_URL}/core/layout/images/home/mountains.jpg" />
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

    {* Left position *}
    {iteration:positionLeft}
      {option:positionLeft.blockIsHTML}
        <div class="span4">
          {$positionLeft.blockContent}
        </div>
      {/option:positionLeft.blockIsHTML}
      {option:!positionLeft.blockIsHTML}
        {$positionLeft.blockContent}
      {/option:!positionLeft.blockIsHTML}
    {/iteration:positionLeft}

    {* Main position *}
    {iteration:positionMain}
      {option:positionMain.blockIsHTML}
        <div class="span4">
          {$positionMain.blockContent}
        </div>
      {/option:positionMain.blockIsHTML}
      {option:!positionMain.blockIsHTML}
        {$positionMain.blockContent}
      {/option:!positionMain.blockIsHTML}
    {/iteration:positionMain}

    {* Right position *}
    {iteration:positionRight}
      {option:positionRight.blockIsHTML}
        <div class="span4">
          {$positionRight.blockContent}
        </div>
      {/option:positionRight.blockIsHTML}
      {option:!positionRight.blockIsHTML}
        {$positionRight.blockContent}
      {/option:!positionRight.blockIsHTML}
    {/iteration:positionRight}

  </div>

</div>

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}