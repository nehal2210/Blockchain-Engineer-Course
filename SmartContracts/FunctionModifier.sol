// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// Function Modifier
// Modifiers can be used to:

// Restrict access
// Validate inputs
// Guard against reentrancy hack

// modifier is used to reuse the code,
// it can be used by three ways
//  without argument
// with argument
// sandwhich


contract FunctionModifier{

 address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    modifier onlyOwner(){
        require(msg.sender==owner,"you are not an owner");
_; //jis function se aae ho us function me jaao
    }


modifier validateNumber(uint num){
        require(num==10,"not 10");
_; //jis function se aae ho us function me jaao
    }

function secret(uint num) external view onlyOwner validateNumber(num) returns(address){
    
    return owner;
}




}