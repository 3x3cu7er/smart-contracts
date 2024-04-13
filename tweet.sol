// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract Tweet{

    struct Tweet{
        string arthur;
        string content;
        uint128 timestamp;
        uint256 likes;
    }
    mapping(address => Tweet[]) public tweets;

    function createTweets(string memory _tweet) public{
        Tweet memory newTweet({
            arthur: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address  _owner) public view returns (Tweet memory){
        return tweets[_owner];
    }

}