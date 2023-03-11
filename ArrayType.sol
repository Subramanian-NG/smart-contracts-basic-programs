// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.8;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 **/

contract ArrayType 
 {
    uint[] intArray ;
    uint[3] intFixedArray1;
    uint[3] intFixedArray2 = [10,20,30];
    bool[] boolArray;
    address[] addressArray;

    function getFixedArray() public view returns (uint[3] memory)
    {
        //intFixedArray[0] = 40;
        //intFixedArray[0] = 50;
        //intFixedArray[0] = 60;
        return intFixedArray2;
    }

    function getDynamicArray() public view returns (uint[] memory)
    {
        //intFixedArray[0] = 40;
        //intFixedArray[0] = 50;
        //intFixedArray[0] = 60;
        return intArray;
    }

    function pushToIntArray(uint value) public
    {
        intArray.push(value);
    }

    function getArrayLength() public view returns(uint)
    {
        return intArray.length;
    }

    function getElementAtIndexIntArray(uint position) public view returns(uint)
    {
        /*
        if(intArray[position] > 10)
        return 10;
        else if(intArray[position]>5 && intArray[position]<9)
        return 5;
        else 
        return 0;
        */
        return intArray[position];
    }
 }