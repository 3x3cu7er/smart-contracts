// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;
contract arrays{
    uint256[10] public figure;

    function append(uint256 num) public returns (uint256){
        figure.push(num);
    }
}