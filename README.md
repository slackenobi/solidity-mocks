# remix-templates

Patterns for Remix IDE testing and development.

## **Folders**

### Auth-Ownership/OZ-2_5

Patterns for authorization roles and ownership of solidity contracts based on OpenZeppelin Release ```@2.5```. To use in a development project, install using NPM:

```sh
user@system:~$ npm i @openzeppelin/contracts@2.5
```

* Note: For use in [Remix IDE](https://remix.ethereum.org), import ```/openzeppelin-2.5``` contracts directly from repo, rather than [OpenZeppelin Contracts GitHub page](https://github.com/OpenZeppelin/openzeppelin-contracts). OZ GitHub contracts repo is currently holding contracts for version ```@3.0rc1```.

**BasicAccessControl.sol**:

Basic Ownership pattern without library - **REFERENCE ONLY - Not for production use**

**OwnableContract.sol**:

Ownership using OpenZeppelin Ownership library ```@2.5```.

* Note: ```onlyOwner``` functions can be created using Roles.sol. This method should be reserved for the most simple cases.

**RBAC.sol**:

Role authorization using OpenZeppelin Roles library ```@2.5```

**OwnableRBAC.sol**:

Role authorization with Ownership using OpenZeppelin Ownership *and* Roles library ```@2.5```

* Note: There are likely few, if any, circumstances to use Ownable and RBAC/Roles together. Owner/onlyOwner role can be created using RBAC. Ownable is useful only to provide ```renounceOwnership``` and ```transferOwnership``` functionality. This could easily be hardcoded into a contract without the use of ```Ownable.sol```

### Auth-Ownership/OZ-3_0

Patterns for authorization roles and ownership of solidity contracts based on OpenZeppelin Release ```@3.0```. To use in a development project, install using NPM:

```sh
user@system:~$ npm i @openzeppelin/contracts@3.0.0-rc.1
```

No examples at present - only OZ contracts. Will update in future commit.

## **Links**

[Remix IDE](https://remix.ethereum.org) - In-Browser Solidity Sandbox

[OpenZeppelin](https://openzeppelin.com) - OpenZeppelin contract library

## **Credit**

Derived from and inspired by YouTube video from [EatTheBlocks](https://www.youtube.com/channel/UCZM8XQjNOyG2ElPpEUtNasA) channel video:

[YouTube - Access Control with Solidity & OpenZeppelin](https://youtu.be/Tnyrp_W5wdM)
