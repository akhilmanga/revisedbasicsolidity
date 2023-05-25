// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyMappings {
    mapping(uint256 => address) public nfts;
    uint256 counter;


function getOwnerOfNFT(uint256 _id) public view returns(address) {
return nfts[_id];

}

function mintNFT(address _newAddress) public {
nfts[counter] = _newAddress;
counter++;
}

}