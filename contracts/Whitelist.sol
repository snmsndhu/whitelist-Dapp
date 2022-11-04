// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.0;

 contract Whitelist {
    uint8 public maxWhitelistedAddress;
    
    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddress) {
        maxWhitelistedAddress = _maxWhitelistedAddress;
    }
 

 function addAddressesToWhitelist() public {
    require(!whitelistedAddresses[msg.sender],"Sender has already been Whitelisted");

    require(numAddressesWhitelisted < maxWhitelistedAddress, "More addresses cant be added, limit reached");

    whitelistedAddresses[msg.sender] = true;

    numAddressesWhitelisted += 1;
    }
 }