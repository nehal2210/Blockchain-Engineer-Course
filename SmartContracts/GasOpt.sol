// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract GasOpt {
    // start - 50992 gas
    // use calldata - 49163 gas
    // load state variables to memory - 48952  gas
    // short circuit -  48634 gas
    // loop increments - 48244 gas
    // cache array length - 48201  gas
    // load array elements to memory - 48039 gas
    // uncheck i overflow/underflow - 47301 gas



    uint public total;
    // [1, 2, 3, 4, 5, 100]

    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        
        uint _total;
        uint l = nums.length;
        for (uint i = 0; i < l;) {
        uint n = nums[i]; 
            if (n % 2 == 0 && n < 99) {
                _total += n;
            }
        
        unchecked{
            ++i;
        } 
        }


        total = _total;
    }

 
}