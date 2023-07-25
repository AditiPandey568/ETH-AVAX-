#ETH-AVAX
The given Solidity smart contract, named RequireAssertRevertExample, is a simple example demonstrating the use of require, assert, and revert functions for condition checking and error handling in a smart contract. 

#DESCRIPTION-
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. 
It allows only the contract owner to set a value, enforces a minimum value of 100, and prevents setting values greater than 1000, reverting transactions with appropriate error messages when conditions are not met.

#PROGRAM CODE-
To run this program,can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract RequireAssertRevertExample {
    address public owner;
    uint256 public minValue = 100;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _value) external {
        // Use require() to check a condition and revert if it's not met.
        require(msg.sender == owner, "Only the contract owner can set the value");

        // Use assert() to check a condition that should never fail, indicating a bug if it does.
        assert(_value >= minValue);

        // Use revert() to explicitly revert the transaction with a custom error message.
        if (_value > 1000) {
            revert("Value cannot be greater than 1000");
        }

        // Your logic to set the value goes here
    }
}

#AUTHOR-
Metacrafter Chris
@metacraftersio

#LICENSE
This project is licensed under the MIT License - see the LICENSE.md file for details



