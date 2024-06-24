// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract A {
    string internal x;

    function setA() external {
        x = "student";
    }
}

contract B {
    uint internal pow;

    function setB() external {
        uint a = 4;
        uint b = 6;
        pow = a * b;
    }
}

contract C is A, B {
    function getX() external view returns (string memory) {
        return x;
    }

    function getPow() external view returns (uint) {
        return pow;
    }
}

contract Caller {
    C contractC = new C();

    function testInheritance() public returns (string memory, uint) {
        contractC.setA();
        contractC.setB();
        return (contractC.getX(), contractC.getPow());
    }
}
