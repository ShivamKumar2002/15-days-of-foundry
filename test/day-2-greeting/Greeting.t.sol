// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Greeting} from "../../src/day-2-greeting/Greeting.sol";

contract GreetingTest is Test {
    Greeting greeting;

    function setUp() public {
        greeting = new Greeting("Hello, World!");
    }

    function testGreet() public view {
        assertEq(greeting.greet(), "Hello, World!");
    }

    function testSetGreeting() public {
        greeting.setGreeting("Hi there!");
        assertEq(greeting.greet(), "Hi there!");
    }
}
