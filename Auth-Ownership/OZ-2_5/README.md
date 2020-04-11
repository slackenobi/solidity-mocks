# Auth-Ownership/OZ-2_5

Patterns for authorization roles and ownership of solidity contracts based on OpenZeppelin Release ```@2.5```. Individual library files located in ```./openzeppelin-2.5```. To use library in a development|production project, install using NPM:

```sh
user@system:~$ npm i @openzeppelin/contracts@2.5
```

* Note: For use in [Remix IDE](https://remix.ethereum.org), import ```/openzeppelin-2.5``` contracts directly from repo, rather than [OpenZeppelin Contracts GitHub page](https://github.com/OpenZeppelin/openzeppelin-contracts). OZ GitHub contracts repo is currently holding contracts for version ```@3.0rc1```.

## **Contracts**

**BasicAccessControl.sol**:

Basic Ownership pattern without library - **REFERENCE ONLY - Not for production use**

**OwnableContract.sol**:

Ownership using OpenZeppelin Ownership library ```@2.5```.

* Note: ```onlyOwner``` functions can be created using Roles.sol. This method should be reserved for the most simple cases.

**RBAC.sol**:

Role authorization using OpenZeppelin Roles library ```@2.5```

**OwnableRBAC.sol**:

Role authorization with Ownership using OpenZeppelin Ownership *and* Roles library ```@2.5```

* Note: There are likely few, if any, circumstances to use Ownable and RBAC/Roles together. Owner role can be created using RBAC. Ownable is useful only to provide ```renounceOwnership``` and ```transferOwnership``` functionality. This could easily be hardcoded into a contract without the use of ```Ownable.sol```

## **Reference | Credits**

Derived from and inspired by YouTube video from [EatTheBlocks](https://www.youtube.com/channel/UCZM8XQjNOyG2ElPpEUtNasA) channel video:

[YouTube - Access Control with Solidity & OpenZeppelin](https://youtu.be/Tnyrp_W5wdM)
