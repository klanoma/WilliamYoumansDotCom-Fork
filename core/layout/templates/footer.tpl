    <footer class="row">
      <div class="container">
        <div class="row">
          <div class="span2">
            <h3>Quick links</h3>
            <ul>
              <li><a href="#" title="">Home</a></li>
              <li><a href="#" title="">Our work</a></li>
              <li><a href="#" title="">About us</a></li>
            </ul>
          </div>
          <div class="span2">
            <br /><br />
            <ul>
              {iteration:footerLinks}
                <li{option:footerLinks.selected} class="selected"{/option:footerLinks.selected}>
                  <a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
                    {$footerLinks.navigation_title}
                  </a>
                </li>
              {/iteration:footerLinks}
            </ul>
          </div>
          <div class="span4 social-networks">
            <h3>Stay in touch</h3>
            <p>Stay in touch on social networks</p>
            <a href="#" title="Follow us on Facebook" class="icon-facebook"></a>
            <a href="#" title="Follow us on Twitter" class="icon-twitter"></a>
            <a href="#" title="Follow us on Google Plus" class="icon-google-plus"></a>
            <a href="#" title="Follow us on Github" class="icon-github"></a>
            <a href="#" title="Follow us on Pinterest" class="icon-pinterest"></a>
          </div>
          <div class="span4">
            <h3>Newsletter</h3>
            <p>Subscribe to our monthly newsletter and be the first to know about our news and special deals!</p>
            <form>
              <input type="text" placeholder="Enter your E-mail" />
              <input type="submit" class="btn" value="Ok" />
            </form>
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
              <i class="icon-phone"></i> &nbsp;
              888.888.8888
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