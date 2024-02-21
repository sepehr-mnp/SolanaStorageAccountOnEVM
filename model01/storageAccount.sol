// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

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