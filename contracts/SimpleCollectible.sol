// SPDX-Licence-Identifier: MIT

pragma solidity ^0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCollectible is ERC721 {
    uint256 public tokenCounter;

    constructor() public ERC721("Dogie", "DOG") {
        // Initialize the total supply of the token
        tokenCounter = 0;
        totalSupply_ = 100;
    }

    function createCollectible() public returns (uint256) {
        // Create a new collectible
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        tokenCounter++;
        return newTokenId;
    }
}