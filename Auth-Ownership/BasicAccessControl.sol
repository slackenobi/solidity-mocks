pragma solidity >= 0.5.0 < 0.7.0;

contract BasicAccessControl {
    address public admin;

    constructor() public {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Caller not Admin");
        _;
    }

    // solium-disable no-empty-blocks
    function publicFunction() external {}

    function privateFunction1() external onlyAdmin() {}

    function privateFunction2() external onlyAdmin() {}
}
