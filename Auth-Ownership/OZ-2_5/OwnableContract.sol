pragma solidity >= 0.5.0 < 0.7.0;

import "./openzeppelin-2.5/ownership/Ownable.sol";

contract OwnedContract is Ownable {
    constructor() public Ownable() {}
    // solium-disable no-empty-blocks
    function publicFunction() external {}

    function privateFunction() external onlyOwner() {}
}
