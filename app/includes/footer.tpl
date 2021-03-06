<footer class="container-fluid" ng-controller='footerCtrl'>
  <div class="container">
    <p>
      <a href="https://www.myetherwallet.com/"><img src="images/etherwallet-logo.png" height="70px" width="auto" alt="Ether Wallet" /></a>
    </p>

    <p>
      <span translate="FOOTER_1">An open source, javascript, client-side tool for generating Ethererum Wallets & sending transactions.</span>
      <span translate="FOOTER_1b">Created by</span> <a href="https://github.com/kvhnuke" target="_blank">kvhnuke</a> & <a href="https://github.com/tayvano" target="_blank">tayvano</a>.
    </p>

    <p>
      <span translate="FOOTER_2">Donations greatly appreciated:</span> <span class="mono wrap">0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8</span>
    </p>

    <p>
      URLs:
      <a href="https://www.myetherwallet.com" target="_blank">www.MyEtherWallet.com</a> &middot;
      <a href="http://kvhnuke.github.io/etherwallet/" target="_blank">kvhnuke.github.io/etherwallet/</a>
    </p>

    <p>
      Github:
      <a href="https://github.com/kvhnuke/etherwallet" target="_blank">MyEtherWallet.com & MyEtherWallet CX</a>
    </p>

    <p><span translate="NAV_Contact">Contact</span>:
      <a href="mailto:myetherwallet@gmail.com" target="_blank">Email</a> &middot;
      <a href="https://twitter.com/myetherwallet" target="_blank">Twitter</a> &middot;
      <a href="https://www.reddit.com/message/compose/?to=kvhnuke" target="_blank">kvhnuke on reddit</a> &middot;
      <a href="https://www.reddit.com/message/compose/?to=insomniasexx" target="_blank">tayvano (insom) on reddit</a>
    </p>

    <p>
      <span translate="Translator_Desc">Thank you to our translators: </span>
      <span translate="TranslatorName_1"></span>
      <span translate="TranslatorName_2"></span>
      <span translate="TranslatorName_3"></span>
      <span translate="TranslatorName_4"></span>
      <span translate="TranslatorName_5"></span>
    </p>

    <p ng-show="showBlocks" class="text-right" style="font-size: 10px">ETH Block#: {{ethBlockNumber}} &middot; ETC Block#: {{etcBlockNumber}}</p>

  </div>
</footer>

</body>
</html>
