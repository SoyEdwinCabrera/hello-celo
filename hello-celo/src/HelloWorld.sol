// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract HelloWorld {
    address public owner;

    // Constructor to initialize the greeting message
    constructor() {
        owner = msg.sender;
    }

    // Function to set a new greeting message
    function greet(string memory name) external pure returns (string memory) {
        return string(abi.encodePacked("Hello, ", name, "!"));
    }
}
