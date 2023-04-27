// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "truffle/console.sol";

contract Greeting {
    string greeting;

    constructor(string memory _greeting) {
        console.log(_greeting);
        greeting = _greeting;
    }

    function setGreeting(string calldata _greeting) external {
        greeting = _greeting;
        console.log(greeting);
    }

    function greet() external view returns (string memory) {
        return greeting;
    }
}
