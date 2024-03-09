// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {MultiSignatureWallet} from "../src/MultiSignatureWallet.sol";

contract DeployMultiSignatureWallet is Script {
    function run() external returns (MultiSignatureWallet) {
        vm.startBroadcast();

        address owner = msg.sender;
        address[] memory initialOwners = new address[](3);
        initialOwners[0] = owner;
        MultiSignatureWallet wallet = new MultiSignatureWallet(
            initialOwners,
            1
        );

        vm.stopBroadcast();
        return wallet;
    }
}
