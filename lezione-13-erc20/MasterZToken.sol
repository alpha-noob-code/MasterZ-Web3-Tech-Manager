// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// homework lezione 13 - token ERC20
contract MasterZToken is ERC20, Ownable {

    constructor(address initialOwner) ERC20("MasterZ Token", "MZT") Ownable(initialOwner) {
        // 1 milione di token a chi fa il deploy
        _mint(initialOwner, 1000000 * 10 ** decimals());
    }

    // solo l'owner puo creare nuovi token
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
