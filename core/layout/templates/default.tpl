{include:core/layout/templates/head.tpl}

{* Logo *}
<a href="/">{$siteTitle}</a>

{* Skip link *}
<a href="#main">{$lblSkipToContent|ucfirst}</a>

{* Navigation *}
{$var|getnavigation:'page':0:1}

{* Breadcrumb *}
{include:core/layout/templates/breadcrumb.tpl}

{* Navigation *}
{$var|getnavigation:'page':0:1}

{* Language *}
{include:core/layout/templates/languages.tpl}

{* Top position *}
{iteration:positionTop}
  {$positionTop.blockContent}
{/iteration:positionTop}

{* Subnavigation *}
{$var|getsubnavigation:'page':{$page.id}:2}

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

{* Page title *}
{option:!hideContentTitle}
<h1>{$page.title}</h1>
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

<noscript>
  <div class="message notice">
    <h4>{$lblEnableJavascript|ucfirst}</h4>
    <p>{$msgEnableJavascript}</p>
  </div>
</noscript>

{include:core/layout/templates/footer.tpl}