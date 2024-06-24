// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract assignment {
    bool public loggedIn = true;

    function ternaryOperator() public view returns (string memory) {
        string memory result = (loggedIn)
            ? "user is logged in"
            : "user is not  logged in";
        return result;
    }
}
