# WHAT DOES MY CALCULATOR DO?


This is a basic income tax calculator, based on the new income tax scheme released by the Government of India. The calculator, deployed on blockchain by solidity, helps in calculating the basic income tax with the help of the slabs, as established by the Government. It also calculates the surchanrge on the basic income tax.

Any calculations made on the calculator will be stored on the blockchaim, thereby helping the user in keeping a track of the basic income tax that was incurred to them.

## The code

```js
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
```
Tax slabs as per info given in: https://economictimes.indiatimes.com/wealth/tax/latest-income-tax-slabs/articleshow/62751981.cms
