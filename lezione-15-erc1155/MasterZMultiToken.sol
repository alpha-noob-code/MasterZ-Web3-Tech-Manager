// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

// homework lezione 15 - ERC1155
contract MasterZMultiToken is ERC1155, Ownable {
    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    uint256 public constant CERTIFICATO = 2; // questo e' un NFT, ne creo solo 1

    // baseUri = cartella dei json su pinata, es. ipfs://CID/
    constructor(address initialOwner, string memory baseUri) ERC1155(baseUri) Ownable(initialOwner) {
        _mint(initialOwner, GOLD, 1000, "");
        _mint(initialOwner, SILVER, 5000, "");
        _mint(initialOwner, CERTIFICATO, 1, "");
    }

    function mint(address to, uint256 id, uint256 amount) public onlyOwner {
        _mint(to, id, amount, "");
    }

    // opensea vuole il link completo al json (es. ipfs://CID/0.json)
    function uri(uint256 id) public view override returns (string memory) {
        return string(abi.encodePacked(super.uri(id), Strings.toString(id), ".json"));
    }
}
