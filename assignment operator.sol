// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract assignment {

    function simpleAssignment() public pure returns(string memory) {
        string memory result = "assigned";
        return result;
    }

    function addAndAssignment() public pure returns (uint) {
        uint result = 1;
        result += 4;
        return result;
    }

    function subAndAssignment() public pure returns (uint) {
        uint result = 10;
        result -= 4;
        return result;
    }

    function mulAndAssignment() public pure returns (uint) {
        uint result = 10;
        result *= 4;
        return result;
    }
}