// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyStructs {

struct NFT {
    string name;
    uint256 dna;

}


NFT[] public nftList;

function addNFT(string memory _name, uint256 _dna) public {

NFT memory newNFT = NFT(_name, _dna);
// newNFT.name = _name;
// newNFT.dna = _dna;
nftList.push(newNFT);

}

function addNFTs(NFT[] calldata _nfts) public {

nftList = _nfts;
}

function updateNFTStorage(uint256 _index, string memory _name) public {
    NFT storage nftTOBeUpdated = nftList[_index];
nftToBeUpdated.name = _name;
}

function updateNFTMemory(uint256 _index, string memory _name) public {
    NFT storage nftTOBeUpdated = nftList[_index];
nftToBeUpdated.name = _name;
nftList[_index] = nftToBeUpdated;
}

function getNftName() public view returns(NFT memory) {
    return nftList[_index].name;
}

}