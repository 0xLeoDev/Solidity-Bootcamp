// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";


contract marketPlaceItem1{

mapping (address => bool) public alreadyBought;
uint public price = 10;
address public owner = payable(msg.sender);       // We automatically sending the funds to the wallet to increase the security.

IERC20 public USDCfToken = IERC20(0xd9145CCE52D386f254917e481eB44e9943F39138);


// we pay in token, so the function do not have to be payable
function payInUSDCf() public returns(bool){
    require(alreadyBought[msg.sender] ==  false, "You alreay bought this item");    // Checking if "msg" already bought

    USDCfToken.transferFrom(msg.sender, owner, price);

    alreadyBought[msg.sender] = true;    // Adding the address to the already bought list.
    return alreadyBought[msg.sender];
}



// msg.sender -> marketPlaceItem1 -> USDCfTocken

} 
// USDCf contract addres
// 0xd9145CCE52D386f254917e481eB44e9943F39138
// 1st addres 
// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4