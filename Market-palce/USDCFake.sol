// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


// We are seting up market placye with react and solidity 

// smartcontract = market item 1

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

// Fake version of USDC for testing purposes.
contract usdc is ERC20 ("USDCfake", "USDCf"){
    function mintTwenty() public{
        _mint(msg.sender, 20);
    }

}

