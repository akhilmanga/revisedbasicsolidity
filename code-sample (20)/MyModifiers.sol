// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyModifier {
    uint256 public myNum = 0;
     bool public paused = false;
     address public owner;


     constructor() {
        owner = address(msg.sender);
     }


     modifier isNotPaused() {
         
 require(paused == false, "contract is paused");
 _;
         
     }

     modifier onlyOwner() {
         require(msg.sender == owner, "Not the owner");
         _;
     } 

     function setPaused () public {
         paused = true;
     }


    function addToNum() public isNotPaused onlyOwner{
    
     myNum++;
    }

function subFromNum() public isNotPaused onlyOwner{
    
     myNum--;
    }

}