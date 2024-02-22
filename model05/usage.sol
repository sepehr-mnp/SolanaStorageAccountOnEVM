// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*
*   implement it without need of passing key
*   for example pass name to the get function and get the result
*/

interface storager{
 function name(string memory name) external payable ;
 function get(bytes32 key) external  view  returns(bytes memory);
 
}
contract A{
    address public implementation;
    constructor(address _implementation){
        implementation = _implementation;
    }
    function setName(string memory name) external {
        storager(implementation).name(name);
    }
    
    function getName(bytes32 key) public view  returns(bytes memory) { 
      return storager(implementation).get(key);
    }
}