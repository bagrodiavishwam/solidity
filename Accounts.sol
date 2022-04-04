// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0 ;
contract Accounts{
  uint result;
  function credit(uint x, uint y) public{
      result=x+y;
  }
  function debit(uint x, uint y) public{
      require(x>y,'Cannot debit amount greater than account balance');
      result=x-y;
  }
   function get() public view  returns (uint){
        return result;
   }
}
