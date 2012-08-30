<footer id="footer">
  <div class="container">
    <div id="footerLogo">
      <p>&copy; {$now|date:'Y'} {$siteTitle}</p>
    </div>
    <nav id="footerNavigation">
      <h4>{$lblFooterNavigation}</h4>
      <ul>
        {iteration:footerLinks}
          <li{option:footerLinks.selected} class="selected"{/option:footerLinks.selected}>
            <a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
              {$footerLinks.navigation_title}
            </a>
          </li>
        {/iteration:footerLinks}
        <li><a href="http://www.fork-cms.com" title="Fork CMS">Fork CMS</a></li>
      </ul>
    </nav>
  </div>
</footer>

{* General Javascript *}
{iteration:jsFiles}
  <script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}

{* Theme specific Javascript *}
<script src="{$THEME_URL}/core/js/bootstrap.min.js"></script>
<script src="{$THEME_URL}/core/js/jquery.isotope.min.js"></script>
<script src="{$THEME_URL}/core/js/jquery.touchSwipe.js"></script>
<script src="{$THEME_URL}/core/js/functions.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}