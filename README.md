This program demonstarte the error handling in solidity programming language.

Description This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. In this program, we will show the error handling in solidity programming language. Error handling in Solidity involves techniques and constructs used to handle exceptional cases, validate inputs, and respond to errors or invalid conditions within smart contracts. We will show the error hadling using various statements like assert() , require() and revert(). We have taken ZeroDivision error as the problem in this program and handled it using error handling technique.

Getting Started Executing program To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., errorHandling.sol). Copy and paste the following code into the file:


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



 To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Author Manish kumar
