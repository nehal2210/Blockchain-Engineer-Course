// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// For and While Loop
// Solidity supports for, while, and do while loops.
// Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
// For the reason above, while and do while loops are rarely used.


contract Loops{
  function Forloop() public  pure returns(uint) {
        // for loop
        // i++ => i = i + 1
        uint c = 0;
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
            c+=1; // c = 4
        }
        return c;
  }
    
     function Whileloop() public pure returns(uint) {

        // while loop
        uint j;//0
        while (true) {
            j++;//j = j + 1
        }
        return j;

     }

}