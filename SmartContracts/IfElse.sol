// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Operators
//  == equal to
// < less than
//  > greater than
//  <= less than equal to
//  >= greater than equal to 
//  != not equals to

// Logical Operators:
// AND (cond1 && cond2) True when both conditions are true
// OR (cond1 || cond2) True when any one condition is true

// require(condition,"error msg")
// if true continue execution otherwise print return error msg and stop excecution

contract IfElse{
    
    function grade(uint num) external pure returns(uint){
        require(num>10,"num is less than 10");
    return num;

    }


function gradeIfElse(uint num) external pure returns(uint){
    if(num > 10){
        return 90;
    }
   
    else{
        return 70;
    }
}


function ternary(uint num) external pure returns(uint){
    // condition ? when true : when false
    return num>10 ? 90 : 70;
}








}