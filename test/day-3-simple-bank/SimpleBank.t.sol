// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {SimpleBank} from "../../src/day-3-simple-bank/SimpleBank.sol";

contract SimpleBankTest is Test {
    SimpleBank simpleBank;

    function setUp() public {
        simpleBank = new SimpleBank();
    }

    function test_GetBalance() public {
        simpleBank.deposit{value: 1 ether}();
        assertEq(simpleBank.getBalance(), 1 ether);
    }

    function test_Deposit() public {
        simpleBank.deposit{value: 1 ether}();
        assertEq(simpleBank.getBalance(), 1 ether);
    }

    function test_MultipleDeposits() public {
        simpleBank.deposit{value: 1 ether}();
        simpleBank.deposit{value: 2 ether}();
        assertEq(simpleBank.getBalance(), 3 ether);
    }

    function test_Withdraw() public {
        simpleBank.deposit{value: 1 ether}();
        simpleBank.withdraw(0.5 ether);
        assertEq(simpleBank.getBalance(), 0.5 ether);
    }

    function test_WithdrawFullBalance() public {
        simpleBank.deposit{value: 1 ether}();
        simpleBank.withdraw(1 ether);
        assertEq(simpleBank.getBalance(), 0 ether);
    }

    function testRevert_WithdrawWithNoBalance() public {
        vm.expectRevert("Insufficient balance");
        simpleBank.withdraw(1 ether);
    }

    function testRevert_WithdrawWithLessBalance() public {
        simpleBank.deposit{value: 1 ether}();
        vm.expectRevert("Insufficient balance");
        simpleBank.withdraw(2 ether);
    }

    receive() external payable {}
}
