// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract FunctionOverloading {
    function sum(uint _num1, uint _num2) public pure returns (uint) {
        uint result = _num1 + _num2;
        return result;
    }

    function sum(
        uint _num1,
        uint _num2,
        uint _num3
    ) public pure returns (uint) {
        uint result = _num1 + _num2 + _num3;
        return result;
    }

    function caller() public pure returns (uint, uint) {
        return (sum(3, 4), sum(5, 6, 7));
    }
}
