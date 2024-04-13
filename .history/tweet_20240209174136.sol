// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract Tweet{
    mapping(address => string) public tweets;

    function createTweets(string memory _tweets){
        tweets[msg.sender] = _tweets;
    }

}