// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
/// not imoplemented yet
/*
* add model 2 in wich the  _storageSlot is mapping(bytes32 => bytes[]) and the key is hash of address of the msg.sender and key given by the sender
* create model 3 with public mapping
* create one simple example to use
* create complex example like ERC20
* use encode and decode to hold struct in more complex example
* good readme And use cases like promethon
* finish model04 with storage slot
*/

contract StorageAccount{
    mapping(address => mapping(bytes32 => bytes[])) private _storageSlot;

    function set(bytes32 key, bytes[] memory value) external{
        _storageSlot[msg.sender][key] = value;
    }

    function del(bytes32 key) external {
        delete _storageSlot[msg.sender][key];
    }

    function get(bytes32 key) external view returns(bytes[] memory){
        return _storageSlot[msg.sender][key];
    }

}
///  0x626c756500000000000000000000000000000000000000000000000000000000