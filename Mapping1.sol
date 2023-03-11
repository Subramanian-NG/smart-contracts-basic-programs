// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.8;

contract SimpleToken
{
    address owner;
    mapping(address=>uint) public accounts;

    constructor(uint256 value)
    {
        owner = msg.sender;
        accounts[owner] = value;
    }

    function transfer(address to, uint256 value) public
    {
        require(accounts[msg.sender]>=value);
        require(accounts[to]+value>=accounts[to]);
        accounts[msg.sender]-=value;
        accounts[to]+=value;
    }

}
