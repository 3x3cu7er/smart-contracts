// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract permission{
    uint256 public perMin =3;
    function mint(uint256 amount) public{
        require(amount <= perMin,"Permission denied");
    }
}