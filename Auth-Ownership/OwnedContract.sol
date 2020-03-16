pragma solidity >= 0.5.0 < 0.7.0;

import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract OwnedContract is Ownable {
    constructor() public Ownable() {}
    // solium-disable no-empty-blocks
    function publicFunction() external {}

    function privateFunction() external onlyOwner() {}
}
