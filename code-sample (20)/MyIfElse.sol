// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyIfElse {
     uint256 public revealState;
     bool public isNowRevealed = false;
     string public status = "Not yet revealed";

     function addToRevealState() public {
         revealState++;


     }

     function isRevealed() public {
if(revealState >= 5) {
isNowRevealed = true;
status = "revealed";
} else {
status = "Not revealed";
}
     }

}