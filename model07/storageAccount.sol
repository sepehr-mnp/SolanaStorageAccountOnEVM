// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*
*   this one uses codehash
* and is different
*/


contract StorageAccount{
    address public Account;
    constructor(address _accountAddress){
        Account = _accountAddress;
    }
    fallback() external payable virtual {}
    receive() external payable virtual {}
}
