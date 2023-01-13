// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;



// Library
// Libraries are similar to contracts, but you can't declare any state variable and you can't send ether.

// A library is embedded into the contract if all library functions are internal.

// Otherwise the library must be deployed and then linked before the contract is deployed.


library Math{

    function add(uint a, uint b) internal pure  returns(uint){
        return a+b;
    }
}