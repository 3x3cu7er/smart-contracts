// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract Tweet{
    mapping(address => string) public tweets;

    function createTweets(string memory _tweet) public{
        tweets[msg.sender] = _tweet;
    }

    function getTweet(address  _owner) public view returns (string memory){
        return tweets[_owner];
    }

}