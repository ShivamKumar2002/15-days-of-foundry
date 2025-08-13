// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Greeting {
    string public greetMessage;

    constructor(string memory _greetMessage) {
        greetMessage = _greetMessage;
    }

    function greet() public view returns (string memory) {
        return greetMessage;
    }

    function setGreeting(string memory _newMessage) public {
        greetMessage = _newMessage;
    }
}
