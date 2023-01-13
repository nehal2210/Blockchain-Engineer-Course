// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;



// Local Variable
// Variables whose values are available only within a function where it is defined. 
// Function parameters are always local to that function.
// Always declare or initilaize inside a function


contract LocalVariables{


    uint public num; //state Variable

    // write
    function setNum(uint number) external{
        num = number;   

    }

function add(uint _a, uint _b ) external pure  returns(uint){
     // local variabels

    uint  a =_a;
    uint b = _b;
return a+b;

}










}
