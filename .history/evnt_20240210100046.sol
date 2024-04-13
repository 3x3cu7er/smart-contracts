// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.9;

contract userRegistrtion{
    struct userCred{
        string userName;
        uint120 age;
    }

    event userEvent(address indexed user, string userName);

}