// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract forLoop {
    uint256[] public numbers;

    function addNumbers(uint256 _count) public {
        for (uint256 i = 0; i < _count; i++) {
            numbers.push(i);
        }
    }

    function show() public view returns (uint[] memory) {
        return numbers;
    }
}
