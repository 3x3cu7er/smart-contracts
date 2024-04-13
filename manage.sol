// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract admin{
    mapping(address => uint) public keyPair;

    function setAdd(address user,uint value) public{
        keyPair[user] = value;
    }

    function getAdd(address user) public view returns (uint){
        return keyPair[user];
    }

    function removeAdd(address user) public{
        delete keyPair[user];
    }
}