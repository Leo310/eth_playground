// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Token {
    string public name = "Leo310 Token";
    string public symbol = "L310";
    uint public totalSupply = 1000000; // 1 million tokens
    mapping(address => uint) public balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}
