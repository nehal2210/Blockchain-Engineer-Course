
// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// Solidity supports multiple inheritance. Contracts can inherit other contract by using the "is" keyword.
// Function that is going to be overridden by a child contract must be declared as virtual.
// Function that is going to override a parent function must use the keyword override.
// Order of inheritance is important.

// H.W : What is Multiple Inharitace and Multilevel Inharitance


contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo() public pure virtual override  returns (string memory) {
        return "B";
    }

}


contract C is B {
    // Override A.foo()
    function foo() public pure override  returns (string memory) {
        return "C";
    }

}