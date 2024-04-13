
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract Calculator{
    uint64 public res =0;
    function add(uint128 num) public {
        return res += num;
    }
}