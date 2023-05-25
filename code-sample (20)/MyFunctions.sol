// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyFunctions {
    uint256 myUint = 4444;
    string  myString = "Akhil";
    bool myBool = true;
    uint256[] myArr = [1, 2, 3, 4];

    function myPureFunc(uint256 _x, uint256 _y) public pure returns(uint256) {
return _x + _y;

    }

    function myViewFunc() public view returns(string memory) {
        return myString;
    }

    function myUpdateFunc() public returns(string memory) {
        myString = "Akhil";
        return myString;
    }

    function myReturnFunc() external view returns(uint256, string memory, bool, uint256[] memory) {
        return (myUint, myString, myBool, myArr);
    }

    function myNoReturnFunc() external {
        myBool = false;
    }
}