// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.8;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 **/

 contract EnumType
 {
    enum ActionChoices {GoLeft, GoRight, GoStraight, SitStill}
    ActionChoices actionChoice;
    string customString;
    int customInt;
    ActionChoices constant defaultChoice = ActionChoices.GoRight;

    function getChoice() public view returns(ActionChoices)
    {
        return actionChoice;
    }

    function getDefaultChoice() public pure returns(uint)
    {
        return uint(defaultChoice);
    }
    
    function getLargestValue() public pure returns (ActionChoices)
    {
        return type(ActionChoices).max;
    }
    function getSmallestValue() public pure returns (ActionChoices)
    {
        return type(ActionChoices).min;
    }

    function setGoStraight() public
    {
        actionChoice = ActionChoices.GoStraight;
    }

 }