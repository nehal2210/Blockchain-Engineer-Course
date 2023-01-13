// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./HelloWorld.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.5/contracts/token/ERC20/ERC20.sol";

contract IMport is ERC20  {


// HelloWorld h = new HelloWorld();

//  string public hello = h.greet();
   constructor(string memory name_, string memory symbol_) ERC20(name_,symbol_) {}

}