{include:core/layout/templates/head.tpl}

<div class="container" id="content">

  {* Page title *}
  {option:!hideContentTitle}
    <div class="hero-unit ac">
      <h1>{$page.title}</h1>
    </div>
  {/option:!hideContentTitle}

  <div class="row">

    {* Left position *}
    {iteration:positionLeft}
      {option:positionLeft.blockIsHTML}
        <div class="span4 home-left">
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
        <div class="span5 home-middle">
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
        <div class="span3 home-right">
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