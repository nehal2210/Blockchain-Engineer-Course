// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;


// Global Variables − 
// Special variables exists in the global namespace used to get information about the blockchain.

// e.g.
// block.chainid (uint): current chain id

// block.difficulty (uint): current block difficulty

// block.number (uint): current block number

// c (uint): current block timestamp as seconds since unix epoch

// msg.data (bytes calldata): complete calldata

// msg.sender (address): sender of the message (current call)

// msg.sig (bytes4): first four bytes of the calldata (i.e. function identifier)

// msg.value (uint): number of wei sent with the message


contract GlobalVariables{


function global() external view returns(address,uint,uint){
    address sender = msg.sender;
    uint blockNum = block.number;
    uint blockDiff = block.difficulty;

    return(sender,blockNum,blockDiff);
}


}
