// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.9;

contract issuer{
    mapping(address => uint) public balances;

    function checkBalance(address _user) public view returns  (uint)  {
        return balances[_user];
    }
}