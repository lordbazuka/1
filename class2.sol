// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract orNotOr {
    int256[] inputArray;
    int256 andResult;
    int256 orResult;

    function getArray(int256[] memory ipArray) public {
        require(ipArray.length >= 10);
        inputArray = ipArray;

        andResult =
            inputArray[1] &
            inputArray[3] &
            inputArray[5] &
            inputArray[7] &
            inputArray[9];
        orResult =
            inputArray[0] |
            inputArray[2] |
            inputArray[4] |
            inputArray[6] |
            inputArray[8];
    }

    function getAndResult() public view returns (int256) {
        return andResult;
    }

    function getOrResult() public view returns (int256) {
        return orResult;
    }

    function multiply(int256 num_1, int256 num_2) public pure returns (int256) {
        return num_1 * num_2;
    }

    function multiplyThree(
        int256 num_1,
        int256 num_2,
        int256 num_3
    ) public pure returns (int256) {
        return num_1 * num_2 * num_3;
    }
}
