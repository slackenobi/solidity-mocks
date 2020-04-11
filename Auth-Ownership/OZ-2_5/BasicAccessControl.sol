pragma solidity >= 0.5.0 < 0.7.0;

/**
 * Basic access control contract without using OZ libraries.
 * FOR REFERENCE ONLY - DO NOT USE THIS METHOD WHEN AVOIDABLE!
 * It does not provide adequate security for most use cases
 * and does not provide basic functionalities of OZ libraries
 */

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
