// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract mathematicalFunction {
    uint public number1 = 9;
    uint public number2 = 10;

    uint public modofAddOfTwoNumbers = addmod(number1, number2, 2);
    uint public modofMulOfTwoNumbers = mulmod(number1, number2, 4);
}
