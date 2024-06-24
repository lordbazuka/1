// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Election {
    string[] candidatesList = ["blackie", "kallu", "000", "111"];
    uint256[][] candidatesData = [
        [27, 4, 15],
        [26, 10, 0],
        [28, 5, 0],
        [26, 0, 12]
    ];
    uint256[] candidateResult;
    string[] candidateStatus;

    function calculateResult() public {
        candidateResult = new uint256[](candidatesData.length);

        for (uint i = 0; i < candidatesData.length; i++) {
            if (candidatesData[i][2] == 0) {
                candidateResult[i] = andData(
                    candidatesData[i][0],
                    candidatesData[i][1]
                );
            } else {
                candidateResult[i] = andData(
                    candidatesData[i][0],
                    candidatesData[i][1],
                    candidatesData[i][2]
                );
            }
        }

        candidateStatus = new string[](candidatesList.length);

        for (uint i = 0; i < candidateResult.length; i++) {
            if (candidateResult[i] > 0) {
                candidateStatus[i] = string(
                    abi.encodePacked(
                        "Candidate: ",
                        candidatesList[i],
                        " with result: ",
                        Strings.toString(candidateResult[i]),
                        " : is selected."
                    )
                );
            } else {
                candidateStatus[i] = string(
                    abi.encodePacked(
                        "Candidate: ",
                        candidatesList[i],
                        " with result: ",
                        Strings.toString(candidateResult[i]),
                        " : is not selected."
                    )
                );
            }
        }
    }

    function andData(
        uint256 age,
        uint256 criminalCase
    ) private pure returns (uint256) {
        return age & criminalCase;
    }

    function andData(
        uint256 age,
        uint256 criminalCase,
        uint256 qualification
    ) private pure returns (uint256) {
        return age & criminalCase & qualification;
    }

    function candidateNames() public view returns (string[] memory) {
        return candidatesList;
    }

    function candidatesDatas() public view returns (uint256[][] memory) {
        return candidatesData;
    }

    function printStatus() public view returns (string[] memory) {
        return candidateStatus;
    }
}
