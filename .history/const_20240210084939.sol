// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.9;

contract issuer{

    constructor(){
     owner = msg.sender;
    }
    mapping(address => uint) public balances;
    uint256 totalAmt ;

    function checkBalance(address _user) public view returns  (uint)  {
        uint256 currentBal = balances[_user];
        require(totalAmt<=currentBal,"Account balance Insufficient");
        currentBal +=totalAmt;
    }
}