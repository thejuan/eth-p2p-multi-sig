// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
// Not needed to be explicitly imported in Solidity 0.8.x
// pragma experimental ABIEncoderV2;

import "./MetaMultiSigWallet.sol";

contract MetaMultiSigWalletFactory {
    MetaMultiSigWallet[] private _wallets;
    uint256 public chainId;

    constructor(uint256 _chainId) {
        chainId = _chainId;
    }

    function createWallet(address[] memory _owners, uint256 _signaturesRequired)
        public
    {
        MetaMultiSigWallet foundation = new MetaMultiSigWallet(
            chainId,
            _owners,
            _signaturesRequired
        );
        _wallets.push(foundation);
    }

    function allWallets()
        public
        view
        returns (MetaMultiSigWallet[] memory coll)
    {
        return _wallets;
    }
}
