{include:core/layout/templates/head.tpl}

<div class="container" id="content">
  {* Page title *}
  {option:!hideContentTitle}
    <div class="hero-unit faq">
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

  <div class="row">

    {* Left position *}
    {iteration:positionLeft}
      {option:positionLeft.blockIsHTML}
        <div class="span3 ac contact-left">
          {$positionLeft.blockContent}
        </div>
      {/option:positionLeft.blockIsHTML}
      {option:!positionLeft.blockIsHTML}
        {$positionLeft.blockContent}
      {/option:!positionLeft.blockIsHTML}
    {/iteration:positionLeft}

    {* Main position *}
    <div class="span9 contact-right">
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

  </div>
</div>

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}