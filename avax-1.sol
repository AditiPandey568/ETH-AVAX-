// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MetacraftersIDupdationsystem {
    address public owner;
    uint256 public MetacraftersID = 50;

    event MetaIDUpdated(uint256 newmetacraftersID);
    constructor() {
        owner = msg.sender;
    }

    function UpdateMetaID(uint256 newmetacraftersID) external {
        require(newmetacraftersID > 1, "Metacrafters ID must be greater than one");
 
        assert(msg.sender == owner);

        if (newmetacraftersID > 1000) {
            revert("MetacraftersID cannot exceed 1000");
        }

        MetacraftersID = newmetacraftersID;
        emit MetaIDUpdated(newmetacraftersID);
    }
}
