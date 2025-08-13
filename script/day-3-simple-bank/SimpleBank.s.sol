// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {SimpleBank} from "../../src/day-3-simple-bank/SimpleBank.sol";

contract SimpleBankScript is Script {
    SimpleBank public simpleBank;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        simpleBank = new SimpleBank();

        vm.stopBroadcast();
    }
}
