// SPDX-License-Identifier: GPL-3.0

//pragma solidity >=0.7.0 <0.9.0;

pragma solidity ^0.8.8;

contract StructTypeArray
{
    struct Employee 
    {
        uint employeeId;
        string name;
        string designation;
    }

    Employee employee1;
    Employee[2] employeeArray;

    function createEmployee() public
    {
        employee1 = Employee(101,'test1','Technician');
    }

    function getEmployeeId() public view returns(uint)
    {
        return employee1.employeeId;
    }

    function createEmployeeArray() public
    {
        employeeArray[0] = Employee(102, 'test2', 'Admin');
        employeeArray[1] = Employee(103, 'test3', 'Developer');
    }

    function getEmployeeArray() public view returns(Employee[2] memory)
    {
        return employeeArray;
    }
}