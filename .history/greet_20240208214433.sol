// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.2;

contract greeting{
    string public name;
    string public greetingPrefix = "Hello";

    constructor( string public initialName){
        name = initialName;
    }

}