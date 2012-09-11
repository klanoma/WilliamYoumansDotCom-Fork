{include:core/layout/templates/head.tpl}

<div class="container" id="content">
  {* Page title *}
  {option:!hideContentTitle}
    <div class="hero-unit faq">
      <h1>{$page.title}</h1>
    </div>
  {/option:!hideContentTitle}

  <div class="row">

    {* Left position *}
    {iteration:positionLeft}
      {option:positionLeft.blockIsHTML}
        <div class="span4 ac contact-left">
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
        <div class="span8 contact-right">
          {$positionMain.blockContent}
        </div>
      {/option:positionMain.blockIsHTML}
      {option:!positionMain.blockIsHTML}
        {$positionMain.blockContent}
      {/option:!positionMain.blockIsHTML}
    {/iteration:positionMain}

  </div>
</div>

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}