// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Greeting} from "../../src/day-2-greeting/Greeting.sol";

contract GreetingScript is Script {
    Greeting public greeting;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        greeting = new Greeting("Hello, World!");

        vm.stopBroadcast();
    }
}
