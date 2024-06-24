// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract ArrayTypes {
    // Fixed size array
    uint[4] rollNumbers;

    function setRollNumbers(uint _index, uint _rollNumber) public {
        rollNumbers[_index] = _rollNumber;
    }

    function getRollNumbers() public view returns (uint[4] memory) {
        return rollNumbers;
    }

    // Dynamic array
    uint[] employeeIds;

    function setEmployeeIds(uint _empId) public {
        employeeIds.push(_empId);
    }

    function removeEmployeeIds() public {
        employeeIds.pop();
    }

    function getEmployeeIds() public view returns (uint[] memory) {
        return employeeIds;
    }
}
