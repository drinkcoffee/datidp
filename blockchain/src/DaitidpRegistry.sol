// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract DaitidpRegistry {
    uint256 public totalRegistered;
    mapping(address => bool) public isRegistered;

    function register(address account) public {
        require(!isRegistered[account], "Already registered");
        isRegistered[account] = true;
        totalRegistered++;
    }

    function unregister(address account) public {
        require(isRegistered[account], "Not registered");
        isRegistered[account] = false;
        totalRegistered--;
    }
}
