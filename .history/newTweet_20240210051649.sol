// SPDX-License-Identifier: MIT
pragma solidity ^0.5.2;

contract genTweet{
    mapping(address => string) public user;

    function creatrTweet(string memory content) public{
        user[msg.sender] = content;
    }
}