

// Error
// An error will undo all changes made to the state during a transaction.

// You can throw an error by calling require, revert or assert.

// require is used to validate inputs and conditions before execution.
// revert is similar to require. See the code below for details.
// assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.

// Use custom error to save gas.


// SPDX-License-Identifier: MIT



// Proposed Solidity best practice:

// Use the name of the smart contract as a prefix for custom errors.

// This helps end users identify which contract reverted a failed tx, which is especially useful for complex txs that involve multiple contracts.


pragma solidity ^0.8.7;




contract Error {

    error Error__GreaterThanTen(uint amount);

    function testRequire(uint _i) public pure returns(uint) {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
        return _i;
    }

    function testRevert(uint _i) public pure returns(uint) {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert Error__GreaterThanTen({amount:_i});
        }
        return _i;
    }

}
