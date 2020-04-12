pragma solidity >= 0.6.0 < 0.7.0;

import "./openzeppelin-3.0rc1/access/Ownable.sol";
// if using Remix IDE comment out above import and use below import statement:
// import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract OwnedContract is Ownable {
    constructor() public Ownable() {}
    // solium-disable no-empty-blocks
    function publicFunction() external {}

    function privateFunction() external onlyOwner() {}
}
