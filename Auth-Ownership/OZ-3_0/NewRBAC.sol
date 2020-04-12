pragma solidity >= 0.6.0 < 0.7.0;

import "./openzeppelin-3.0rc1/access/AccessControl.sol";
// if using in Remix IDE, comment out above import statement and use following:
// import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControl.sol";

contract NewRBAC is AccessControl {
    bytes32 public constant USER_ROLE = keccak256("USER_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    constructor() public {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
    // solium-disable-next-line no-empty-blocks
    function publicFunction() external {}

    function userFunction() public {
        require(hasRole(USER_ROLE, msg.sender), "Caller is not an authorized user");
    }

    function managerFunction() public {
        require(hasRole(MANAGER_ROLE, msg.sender), "Caller is not an authorized manager");
    }
}