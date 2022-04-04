# ABOUT
Bringing to you, deployed on the blockchain, an ACCOUNTS CALCULATOR! This calulator will calculate any amount debitted (deducted) or creditted (added) to your account balance. Being deployed over blockchain, this calculator will keep an account of the transactions being processed, which will be stored in the blockchain. So, no more hassle of keeping track of all finances, or falling prey to scams due to inefficient accounting!
HAPPY FINANCES!!

## The Code

```js
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
```
