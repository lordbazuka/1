// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

interface mumbaiUniversity {
    function sathaye() external pure returns (string[4] memory);
    function mldc() external pure returns (string[4] memory);
}

contract Test is mumbaiUniversity {
    function sathaye() public pure override returns (string[4] memory) {
        string[4] memory sem_1 = [
            "Data Science",
            "Soft Computing",
            "Cloud Computing",
            "RIC"
        ];
        return sem_1;
    }

    function mldc() public pure override returns (string[4] memory) {
        string[4] memory sem_4 = ["HCL", "NLP", "Deep Learning", "Blockchain"];
        return sem_4;
    }
}
