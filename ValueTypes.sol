// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 **/

 contract ValueTypes 
 {
    uint256 intVal;
    bool flag;
    address addressVal;

    function getInt() public view returns(uint256)
    {
        return intVal;
    }

    function getBool() public view returns(bool)
    {
        return flag;
    }

    function getAddressVal() public view returns(address)
    {
        return addressVal;
    }

    function setInt(uint256 val) public
    {
        intVal = val;
    }

    function setBool(bool val) public
    {
        flag = val;
    }

    function setAddress(address val) public
    {
        addressVal = val;
    }
 }