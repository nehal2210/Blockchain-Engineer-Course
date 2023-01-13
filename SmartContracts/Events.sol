
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;



// Events allow logging to the Ethereum blockchain. Some use cases for events are:
// Listening for events and updating user interface
// A cheap form of storage


contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
