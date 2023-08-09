// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOddContract {
    function requireIsEven(uint256 number) external pure returns (bool) {
        // Use require to check if the input is valid
        require(number > 0, "Number must be greater than 0");

        // Check if the number is even
        require(number % 2 == 0, "Number is not even");
        return true;
    }

    function assertIsOdd(uint256 number) external pure returns (bool) {
        // Use assert to check for internal errors
        assert(number > 0);

        // Check if the number is odd
        assert(number % 2 != 0);
        return true;
    }

    function revertCheckEvenOrOdd(uint256 number) external pure returns (string memory) {
        // Use revert to provide custom error messages
        if (number % 2 == 0) {
            revert("Number is even");
        } else {
            revert("Number is odd");
        }
    }
}


