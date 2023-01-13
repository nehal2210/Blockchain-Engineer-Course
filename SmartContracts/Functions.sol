// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Function:
// A piece of code which may or may not take some input, do some coputation and return output
// Once a function is defined, it can be used over and over and over again

// In solidity there are many ways to write function in terms of output.
// 1. return single value
// 2. return multiple values
// 3. return multiple values without return statement(by declaring return values in the definition of function)


// Use destructuring assignment when calling another
// function that returns multiple values.

contract Functions{

    uint public x = 5;


    function SingleValue(uint num) public view returns(uint){

        return num + x;
    }
    
    function useSingleValue() public view returns(uint){
    
    uint y = SingleValue(8);
    return y;
    
    }

function MultipleValues()public pure returns(uint,bool,int){
    uint u =5;
    bool y = true;
    int z = 10;
    // return (5,true,10)
    return (u,y,z);
}



function MultipleValuesDec()public pure returns(uint u,bool y,int z){
     u = 5;
     y = true;
    //  z = 10;
    // return (5,true,10)
    // return (u,y,z);
}


function Destructuring() public pure returns(uint){

    (uint a, uint b,uint c) = (5,6,7);

    return a+b+c;

}

function useMultibleValues() public pure returns(uint,bool,int){

    (uint a,bool b,int c) = MultipleValues();

    return (a,b,c);

}


}







