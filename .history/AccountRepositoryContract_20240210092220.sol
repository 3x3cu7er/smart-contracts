// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.9;

contract PublicStreamHandler{

    struct UserCredentials{
        address AccountAddress;
        uint256 AccountIDCode;
        string UserName;
        bool NewToBlockChain;

    }
    
    struct AccountRequirements{
        bool IsNewToBlockChain;
        string chainType;
        string userName;
        address publicKey;
    }

    struct permissionControl{
        bool IsUser;
        string Authenticate;
        string agreeToProceedTransact;
        string confirm;
    }
    
    UserCredentials[] public getUserCredentials;
    UserCredentials public setUser =UserCredentials({
        AccountAddress: msg.sender,
        AccountIDCode:11234621398641236,
        UserName:"Handel",
        NewToBlockChain: true

    });

    getUserCredentials.push(setUser);
    function GetUserInfo(address username) public{

        

    }

}