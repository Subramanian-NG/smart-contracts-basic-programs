// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.8;

contract StructType 
{
    struct Employee 
    {
        uint employeeId;
        string name;
        string designation;
    }

    Employee employee1;

    function createEmployee() public
    {
        employee1 = Employee(101,'test1','Technician');
    }

    function getEmployeeId() public view returns(uint)
    {
        return employee1.employeeId;
    }
}