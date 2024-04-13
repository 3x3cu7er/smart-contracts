// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.9;

contract issuer{

   
    mapping(address => uint) public balances;
    uint256 totalAmt ;

    struct Tunneling{
        uint256 tunnelID;
        string tunnelName;
        address userAddress;
        bool tunnelEncrypted;
    }
    

    function getOwnerAddress(address owner)public view returns (string memory){
        address  currentUser = msg.sender;
        currentUser;
    }

    

    function handelTunnel() public{
        Tunneling memory newTunnel = Tunneling({
            tunnelID:122341,
            tunnelName: "Tunnel",
            userAddress:msg.sender,
            tunnelEncrypted: false
        });
        newTunnel;

    }

    
    function checkBalance(address _user) public view returns  (uint)  {
        uint256 currentBal = balances[_user];
        require(totalAmt<=currentBal,"Account balance Insufficient");
        currentBal +=totalAmt;
    }
}