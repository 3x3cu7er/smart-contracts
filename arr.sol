// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;
contract arrays{
    uint256[10] public figure;

    function append(uint256 num,uint128 val) public returns (uint256){
        figure = [1,2,3,4,5,6,7,8,9,10];
        return figure[val];
    }
}