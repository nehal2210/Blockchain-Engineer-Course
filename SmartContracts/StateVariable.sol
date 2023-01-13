// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// State Variables − Variables whose values are permanently stored in a contract storage.
// Write State Variable cost gas fee
// Read State Variables are free
//  always declare outside of function


contract StateVariable{

 uint public num;

// write
function setNum(uint number) external{
    num = number;   
}

// read
function getNum() external view returns(uint){
    return num;
}


}