// SPDX-License-Identifier: MIT
pragma solidity ^0.5.2;

contract TweetSystem{
    string handelx = "";
    mapping(address=>string) public getHANDEL;
    function createHandel(address user) public{
       handelx += getHANDEL[user];
    }
}