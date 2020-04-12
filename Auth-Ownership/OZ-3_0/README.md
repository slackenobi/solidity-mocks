# Auth-Ownership/OZ-3_0

* **Note: OpenZeppelin version 3.0 is currently in release candidate stage**

## **Implementation**

Patterns for authorization roles and ownership of solidity contracts based on OpenZeppelin Release Candidate ```@3.0rc1```. Individual library files used located in ```./openzeppelin-3.0rc1```. To use libraries in a development | production project, install using NPM:

```user@system:~/ProjectDirectory$ npm i @openzeppelin/contracts@3.0rc1```

and then ```import``` from folder directly to contract:

### **EXAPMLE**

```js
import "/node_modules/@openzeppelin/contracts/access/AccessControl.sol";
```

* **WARNING: Do not use the ```./openzeppelin-3.0rc1``` folder libraries in this repo in production development. Use the npm/import method described above. These libraries might not be updated to current OpenZeppelin version and could lack security enhancements or patches**

## **Contracts**

**OwnableContract.sol**:

Ownership using OpenZeppelin Ownership library ```@3.0rc1```. Primary changes to ```Ownable.sol``` are documented and explained in the OpenZeppelin pull request [#2162](https://github.com/OpenZeppelin/openzeppelin-contracts/pull/2162). Contract language for ```OwnableContract.sol``` is identical to [{../OZ-2_5/OwnableContract.sol}](https://github.com/slackenobi/solidity-mocks/blob/master/Auth-Ownership/OZ-2_5/OwnableContract.sol).

* Note: This ```onlyOwner``` method should be reserved for the most simple use cases. ```onlyOwner``` functionality can be created using ```AccessControl``` library below, on a more granular level. See more in [OpenZeppelin Access API Docs](https://docs.openzeppelin.com/contracts/3.x-rc/api/access) (external link - OpenZeppelin Docs Website)

**NewRBAC.sol**:

Role based authorization control using OpenZeppelin ```AccessControl``` library ```@3.0rc1```.  This contract performs the same functions as RBAC.sol [{../OZ-2_5/RBAC.sol}](https://github.com/slackenobi/solidity-mocks/blob/master/Auth-Ownership/OZ-2_5/RBAC.sol)

The default case for ```AccessControl``` is to create a ```DEFAULT_ADMIN_ROLE``` in the [```constructor```](https://docs.openzeppelin.com/contracts/3.x-rc/access-control#granting-and-revoking) (external link - OpenZeppelin Docs Website) that serves the functions of [```Ownable.sol```](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/ownership/Ownable.sol) and the old [```Roles.sol```](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/access/Roles.sol) library - *combined*.

* Note: Update with further implimentations of Role Based Access Control in future commits and modify when final release of 3.0 is out.

## **REFERENCE | LINKS**

[OpenZeppelin Contracts API v3.x-rc (External Link - OpenZeppelin Docs Website)](https://docs.openzeppelin.com/contracts/3.x-rc/)
