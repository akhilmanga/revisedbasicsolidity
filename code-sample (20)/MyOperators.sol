// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract MyOperators {
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
   


    function example_1() public view {
        a * b - c;
    }

    function example_2() public view  {
         uint8 newValue;
       newValue = a * b * c;

    }


    function example_3() public view {

    }


    function example_4() public view {

    }


    function example_5() public view {

    }

    
}