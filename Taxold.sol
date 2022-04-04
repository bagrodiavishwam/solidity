// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0 ;
contract Taxold{
  uint result;

    function tax(uint x) public {
        if(x<250000){
            result = 0;
        }
        else if(x>=250000 && x<500000){
            result = 5*x;
               
        }
        else if(x>=500000 && x<750000){
            result = 10*x+12500;
        }
        else if(x>=750000 && x<1000000)
        {
            result = 15*x+37500;
        }
        else if(x>=1000000 && x<1250000){
            result = 20*x+75000;
        }
        else if(x>=1250000 && x<1500000){
            result = 25*x+125000;
        }
        else if(x>=1500000){
            result = 30*x+187500;
           
        }
    }
    function get() public view  returns (uint){
        return result/100;
    }
    
}
