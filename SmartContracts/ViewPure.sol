// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// View and Pure Functions

// In View function: we can only read state variable and not write.
// in Pure function: we can neither read nor write state variables.
// In transaction function: we can write state variable.

contract ViewPure{

    uint public x = 5;


    function ViewFunc(uint _num) public view returns(uint){

        return x + _num;
    }

    function PureFunc(uint a , uint b) public pure returns(uint){

    return a+b;
    
    }

    function TraFunc() public returns(uint){
        x = 10;
        return x;
    }


}