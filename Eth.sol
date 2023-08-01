// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleFunctions {
    // Function demonstrating the use of require
    function requireFunction(uint256 _value) external pure returns (bool) {
        require(_value > 0, "Value must be greater than zero");
        return true;
    }

    // Function demonstrating the use of assert
    function assertFunction(uint256 _value) external pure returns (uint256) {
        uint256 minValue = 100;
        assert(_value >= minValue);
        return _value;
    }

    // Function demonstrating the use of revert
    function revertFunction(uint256 _value) external pure returns (uint256) {
        if (_value > 1000) {
            revert("Value cannot be greater than 1000");
        }
        return _value;
    }
}
