# solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0 ;
contract Tax{
  uint result;
  uint sur=0;
    function tax(uint x) public {
        if(x<250000){
            result = 0;
        }
        else if(x>=250000 && x<500000){
            result = 5*x;
               
        }
        else if(x>=50000 && x<750000){
            result = 10*x;
        }
        else if(x>=750000 && x<1000000)
        {
            result = 15*x;
        }
        else if(x>=1000000 && x<1250000){
            result = 20*x;
        }
        else if(x>=1250000 && x<1500000){
            result = 25*x;
        }
        else if(x>=1500000){
            result = 30*x;
            if(x>=1500000 && x<10000000){
                sur=10*result;
            }
            else if(x>=10000000 && x<20000000){
                sur=15*result;
            }
            else if(x>=20000000 && x<50000000){
                sur=25*result;
            }
            else {
                sur=37*result;
            }
        }
    }
    function get() public view  returns (uint){
        return result/100+sur/1000;
    }
    
}
