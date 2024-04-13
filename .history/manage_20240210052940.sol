// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract admin{
    mapping(address => uint) public keyPair;

    function setAdd(address user,uint value) public{
        keyPair[user] = value;
    }
}