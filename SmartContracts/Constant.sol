// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


// contsant variable values never change;
// they must be initialize before the deployment of contract
// it saves gas cost

contract Constant{
//	23471 gas 
    uint256 public vari_num = 10;
   
   //21393 gas
    uint256 public constant MY_NUM = 10;

}