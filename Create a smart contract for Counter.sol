// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract sample {
    uint256 private count = 0;

    function getCount() public view returns (uint256) {
        return count;
    }

    function increment() public {
        count += 1;
    }
}
