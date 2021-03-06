<!-- Send Transaction Page -->
<article class="tab-pane active" ng-if="globalService.currentTab==globalService.tabs.deployContract.id" ng-controller='deployContractCtrl'>

  <h2 translate="NAV_DeployContract"> Deploy Contract </h2>

  <section class="row" >

    <div class="col-xs-12">

      <!-- To Address
      <div class="form-group">
        <label translate="SEND_addr"> To Address: </label>
        <input class="form-control"  type="text" placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8" ng-model="tx.to" ng-change="validateAddress()"/>
        <div ng-bind-html="validateAddressStatus"></div>
      </div>
      -->

      <!-- Amount
      <div class="form-group">
        <label translate="SEND_amount">Amount to Send:</label>
        <input class="form-control" type="text" placeholder="{{ 'SEND_amount_short' | translate }}" ng-model="tx.value"/>
      </div<
      -->

      <!-- Data -->
      <div class="form-group">
        <h4 translate="TRANS_data"> Data: </h4>
        <textarea class="form-control" ng-model="tx.data" rows="8"></textarea>
        <div class="radio">
          <label><input type="radio" name="dataType" ng-model="dataType" value="bytecode" />
            <span>Bytecode</span></label>
          <label><input type="radio" name="dataType" ng-model="dataType" value="solidity" />
            <span>Solidity</span></label>
        </div>
      </div>

      <!-- Gas -->
      <div class="form-group">
        <h4 translate="TRANS_gas"> Gas: </h4>
        <input class="form-control" type="text" placeholder="300000" ng-model="tx.gasLimit"/>
      </div>

      <!-- Generate Bytecode (Solidity Only) -->
      <div class="form-group" ng-show="dataType == 'solidity'">
        <a class="btn btn-info btn-block" ng-click="" translate="DEP_generate"> GENERATE BYTECODE </a>
      </div>

      <section class="row">

        <!-- Generated Bytecode (Solidity Only) -->
        <div class="form-group col-sm-6" ng-show="dataType == 'solidity'">
          <h4 translate="DEP_generated"> Generated Bytecode </h4>
          <textarea class="form-control" rows="5" disabled ></textarea>
        </div>

        <!-- Generated Interface? (Solidity Only) -->
        <div class="form-group col-sm-6" ng-show="dataType == 'solidity'">
          <h4 translate="DEP_interface"> Generated Interface </h4>
          <textarea class="form-control" rows="5" disabled >[{"constant":false,"inputs":[{"name":"to","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"winningProposal","outputs":[{"name":"winningProposal","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"voter","type":"address"}],"name":"giveRightToVote","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"proposal","type":"uint8"}],"name":"vote","outputs":[],"type":"function"},{"inputs":[{"name":"_numProposals","type":"uint8"}],"type":"constructor"}]</textarea>
        </div>

      </section>


      <!-- Wallet Decrypt -->
      <div class="form-group">
        <br />
        @@if (site === 'cx' )  {  <cx-wallet-decrypt-drtv></cx-wallet-decrypt-drtv>   }
        @@if (site === 'mew' ) {  <wallet-decrypt-drtv></wallet-decrypt-drtv>         }
        <br /><br />
      </div>

      <!-- Sign TX Button (once wallet has been unlocked) -->
      <div class="form-group">
        <a class="btn btn-info btn-block" ng-click="generateTx()" translate="DEP_signtx"> Sign Transaction </a>
      </div>

      <section class="row">
        <!-- Raw TX -->
        <div class="form-group col-sm-6">
          <h4 translate="SEND_raw"> Raw Transaction </h4>
          <textarea class="form-control" rows="4" disabled >{{rawTx}}</textarea>
        </div>

        <!-- Singed TX -->
        <div class="form-group col-sm-6">
          <h4 translate="SEND_signed"> Signed Transaction </h4>
          <textarea class="form-control" rows="4" disabled >{{signedTx}}</textarea>
        </div>
      </section>

      <!-- Deploy Contract Button (once tx has been signged) -->
      <div class="form-group">
        <a class="btn btn-primary btn-block" data-toggle="modal" data-target="#sendTransaction" translate="NAV_DeployContract"> Deploy Contract </a>
      </div>

      <div class="form-group" ng-bind-html="sendTxStatus"></div>



      <!-- Deploy Modal -->
      <div class="modal fade" id="sendTransaction" tabindex="-1" role="dialog" aria-labelledby="sendTransactionLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">

            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h3 class="modal-title text-danger" id="myModalLabel" translate="SENDModal_Title">Warning!</h3>
            </div>

            <div class="modal-body">
              <h4>
                <span translate="">You are about to deploy a contract to the blockchain.</span>
              </h4>
              <h4 translate="SENDModal_Content_3"> Are you sure you want to do this? </h4>
            </div>

            <div class="modal-footer text-center">
              <button type="button" class="btn btn-default" data-dismiss="modal" translate="SENDModal_No">No, get me out of here!</button>
              <button type="button" class="btn btn-primary" ng-click="sendTx()" translate="SENDModal_Yes">Yes, I am sure! Make transaction.</button>
            </div>

          </div>
        </div>
      </div>
      <!--/ Deploy Modal-->


    </div>
  </section>
</article>
<!-- / Send Transaction Page -->
