{include:core/layout/templates/head.tpl}

<div id="content" class="container">

  {* Subnavigation *}
  {$var|getsubnavigation:'page':{$page.id}:2}

  {* Page title *}
  {option:!hideContentTitle}
    <div class="hero-unit">
      <h1>{$page.title}</h1>

      {* Subtitle position *}
      {iteration:positionSubtitle}
        {option:positionSubtitle.blockIsHTML}
          {$positionSubtitle.blockContent}
        {/option:positionSubtitle.blockIsHTML}
        {option:!positionSubtitle.blockIsHTML}
          {$positionSubtitle.blockContent}
        {/option:!positionSubtitle.blockIsHTML}
      {/iteration:positionSubtitle}
    </div>
  {/option:!hideContentTitle}

  {* Main position *}
  {iteration:positionMain}
    {option:positionMain.blockIsHTML}
      <div>
        {$positionMain.blockContent}
      </div>
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