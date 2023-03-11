// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 contract HelloWorld
 {
     string message;
     
     //constructor()
     //{
       //  message = "Smart contract message";
     //}
     

     function setMessage(string memory newMessage) public
     {
        message = newMessage;
     }
     
     function getMessage() public view returns (string memory)
     {
         return message;
     }

     //constructor with parameter
     constructor(string memory argMessage)
     {
        message = argMessage;
     }

 }