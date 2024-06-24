// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract logical {
    bool public studentLogin = true;
    bool public adminLogin = false;

    function Not() public view returns (string memory) {
        string memory result;
        if (!studentLogin) {
            result = "student has not logged in";
        } else {
            result = "student has logged in";
        }
        return result;
    }

    function And() public view returns (string memory) {
        string memory result;
        if (studentLogin && adminLogin) {
            result = "both have logged in";
        } else {
            result = "both have not logged in";
        }
        return result;
    }
}
