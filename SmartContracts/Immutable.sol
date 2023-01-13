// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract Immutable{
 

uint public constant MY_NUM = 10;
address public immutable IMM_OWNER;



// contsant variable values never change;
// they must be initialize during the deployment of contract
// it saves gas cost

constructor (address _owner){
IMM_OWNER = _owner;

}


}