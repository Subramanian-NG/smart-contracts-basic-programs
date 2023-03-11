// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.0;

contract Ledger
{
    mapping(address=>uint) public balances;
    event LogData(address key, uint value);
    address[] public keys;

    function updateBalance(uint value) public
    {
        balances[msg.sender]+=value;
        keys.push(msg.sender);
        //emit LogData(msg.sender, balances[msg.sender]);
    }

    event LogMapping(uint256 key, string value);

}

contract UpdateLedger
{
    //Ledger public ledgerInstance;
    function updateLedgerBalance(address contractAddress) public  returns(uint)
    {
        Ledger ledgerInstance = Ledger(contractAddress);
        ledgerInstance.updateBalance(175);
        //ledger.updateBalance(100);
        return ledgerInstance.balances(address(this));  
    }

    function getAddress() public view returns(address)
    {
        return address(this);
    }
}