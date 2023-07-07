// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionExample {
    function requireExample(uint256 x, uint256 y) external pure returns (uint256) {
        // require statement checks a condition and reverts the transaction if it's false
        require(x != 0, "x must be non-zero");
        require(y != 0, "y must be non-zero");

        uint256 result = x / y;

        return result;
    }

    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 result = a + b;

        // assert statement checks a condition and reverts the transaction if it's false
        assert(result > a);

        return result;
    }

    function revertExample(bool condition) external pure {
        if (condition) {
            // revert statement immediately reverts the transaction
            revert("Condition is true");
        }
    }
}
