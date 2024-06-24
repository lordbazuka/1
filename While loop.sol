// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract counter {
    uint private result = 0;

    function whileLoop(uint number) public returns (uint) {
        uint i = 1;
        while (i <= number) {
            result += 1;
            i++;
        }
        return result;
    }

    function getWhileLoop() public view returns (uint) {
        return result;
    }
}
