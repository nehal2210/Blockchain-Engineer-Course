
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// Access Modifiers: scope accessiblity
// internal : can access only inside the contract and derive contract
// external : can access only from outside of contract
// public : can access from every where
// private : can access only inside the contract


// By default variables are internal

// only use in state variables and functions

// external can only be used with functions


contract A{

uint internal a = 5;

function access() external view returns(uint){
    return a;
}

// function accessExternal() public view returns(uint){
//     return access();
// }
}

contract B  is A{
 uint public b = a;

}

