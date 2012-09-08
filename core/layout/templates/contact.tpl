{include:core/layout/templates/head.tpl}

{* Main position *}
{iteration:positionMain}
  {option:positionMain.blockIsHTML}
    {$positionMain.blockContent}
  {/option:positionMain.blockIsHTML}
  {option:!positionMain.blockIsHTML}
    {$positionMain.blockContent}
  {/option:!positionMain.blockIsHTML}
{/iteration:positionMain}

<div class="container">
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

    {* Right position *}
    {iteration:positionRight}
      {option:positionRight.blockIsHTML}
        <div class="span8">
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