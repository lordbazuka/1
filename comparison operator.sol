// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract comparison {
    uint public number1 = 5;
    uint public number2 = 10;

    function equalTo() public view returns(bool) {
        bool result = number1 == number2;
        return result;
    }

    function notEqualTo() public view returns(bool) {
        bool result = number1 != number2;
        return result;
    }

    function lessThan() public view returns(bool) {
        bool result = number1 < number2;
        return result;
    }

    function lessThanEqual() public view returns(bool) {
        bool result = number1 <= number2;
        return result;
    } 
}