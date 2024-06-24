// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract calculator {
    int256 number1;
    int256 number2;

    function inputNumbers(int256 num1, int256 num2) public {
        number1 = num1;
        number2 = num2;
    }

    function add() public view returns (int256) {
        int256 result = number1 + number2;
        return result;
    }

    function sub() public view returns (int256) {
        int256 result = number1 - number2;
        return result;
    }

    function mul() public view returns (int256) {
        int256 result = number1 * number2;
        return result;
    }

    function div() public view returns (int256) {
        int256 result = number1 / number2;
        return result;
    }
}
