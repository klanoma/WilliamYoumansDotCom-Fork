    <footer class="row">
      <div class="container">
        <div class="row">
          <div class="span4">
            {* FooterLeft position *}
            {iteration:positionFooterleft}
              {option:positionFooterleft.blockIsHTML}
                {$positionFooterleft.blockContent}
              {/option:positionFooterleft.blockIsHTML}
              {option:!positionFooterleft.blockIsHTML}
                {$positionFooterleft.blockContent}
              {/option:!positionFooterleft.blockIsHTML}
            {/iteration:positionFooterleft}
          </div>
          <div class="span4 social-networks">
            <h3>Stay in touch</h3>
            <a href="http://www.facebook.com/wyoumans" title="Follow us on Facebook" class="icon-facebook" target="_blank"></a>
            <a href="http://www.github.com/klanoma" title="Follow us on Github" class="icon-github" target="_blank"></a>
            <a href="http://www.last.fm/gotwilly" title="Follow us on Last.fm" class="icon-lastfm" target="_blank"></a>
          </div>
          <div class="span4">
            {* FooterRight position *}
            {iteration:positionFooterright}
              {option:positionFooterright.blockIsHTML}
                {$positionFooterright.blockContent}
              {/option:positionFooterright.blockIsHTML}
              {option:!positionFooterright.blockIsHTML}
                {$positionFooterright.blockContent}
              {/option:!positionFooterright.blockIsHTML}
            {/iteration:positionFooterright}
          </div>
        </div> <!-- /row -->
      </div> <!-- /container -->

      <div id="footer-extra">
        <div class="container">
          <div class="row">
            <div class="span4">
              &copy; {$now|date:'Y'} {$siteTitle}
            </div>
            <div class="span4">
              {iteration:footerLinks}
                <span{option:footerLinks.selected} class="active"{/option:footerLinks.selected}>
                  <a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
                    {$footerLinks.navigation_title}
                  </a>
                </span>
              {/iteration:footerLinks}
              &nbsp;
            </div>
            <div class="span4">
              <i class="icon-envelope"></i> &nbsp;
              <a href="mailto:hello@williamyoumans.com">hello@williamyoumans.com</a>
            </div>
          </div> <!-- end .row -->
        </div> <!-- end .container -->
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
  </body>
</html>