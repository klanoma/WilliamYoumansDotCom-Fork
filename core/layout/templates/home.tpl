{include:core/layout/templates/head.tpl}

<!-- Carousel -->
<div id="carousel" class="carousel slide" rel="carousel">
  <!-- Carousel items -->
  <div class="carousel-inner">
    {* Main position *}
    {iteration:positionMain}
      {option:positionMain.blockIsHTML}
        <div class="item">
          {$positionMain.blockContent}
        </div>
      {/option:positionMain.blockIsHTML}
      {option:!positionMain.blockIsHTML}
        {$positionMain.blockContent}
      {/option:!positionMain.blockIsHTML}
    {/iteration:positionMain}
  </div>
  <!-- Carousel navigation -->
  <a class="carousel-control left" href="#carousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#carousel" data-slide="next">&rsaquo;</a>
</div>

<div class="container" id="content">

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

    {* Center position *}
    {iteration:positionCenter}
      {option:positionCenter.blockIsHTML}
        <div class="span4">
          {$positionCenter.blockContent}
        </div>
      {/option:positionCenter.blockIsHTML}
      {option:!positionCenter.blockIsHTML}
        {$positionCenter.blockContent}
      {/option:!positionCenter.blockIsHTML}
    {/iteration:positionCenter}

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