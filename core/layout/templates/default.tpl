{include:core/layout/templates/head.tpl}

<div id="content" class="container">

  {* Subnavigation *}
  {$var|getsubnavigation:'page':{$page.id}:2}

  {* Page title *}
  {option:!hideContentTitle}
      <div class="hero-unit">
        <div class="container">
          <h1 class="ac">{$page.title}</h1>
        </div>
      </div>
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

</div>

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}