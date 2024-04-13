
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract Calculator{
    uint256 index = 0;

    function add(uint256 value) public{
        index += value;
    }
}