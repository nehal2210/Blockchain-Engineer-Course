


// Payable
// Functions and addresses declared payable can receive ether into the 
// contract.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Payable {
    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
    function notPayable() public {}

    // Function to withdraw all Ether from this contract.
    function getBalance() public view returns(uint) {
        // get the amount of Ether stored in this contract
        uint amount = address(this).balance;

   return amount;
    }


}
