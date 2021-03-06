pragma solidity >= 0.5.0 < 0.7.0;

import "./openzeppelin-2.5/access/Roles.sol";

contract RBAC {
    using Roles for Roles.Role;

    Roles.Role private users;
    Roles.Role private admins;

    constructor() public {
        admins.add(msg.sender);
    }

    modifier onlyUser() {
        require(users.has(msg.sender) == true, "Must have USER role");
        _;
    }

    modifier onlyAdmin() {
        require(admins.has(msg.sender) == true, "Must have ADMIN role");
        _;
    }
    // solium-disable no-empty-blocks
    function publicFunction() external {}

    function userProtectedFunction() external onlyUser() {}

    function adminProtectedFunction() external onlyAdmin() {}

    function addUser(address _newUser) external onlyAdmin() {
        users.add(_newUser);
    }

    function addAdmin(address _newAdmin) external onlyAdmin() {
        admins.add(_newAdmin);
    }

    function removeUser(address _oldUser) external onlyAdmin() {
        users.remove(_oldUser);
    }

    function removeAdmin(address _oldAdmin) external onlyAdmin() {
        admins.remove(_oldAdmin);
    }
}
