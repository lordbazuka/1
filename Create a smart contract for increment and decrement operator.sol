// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract counter {
    int256 public count;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }
}
