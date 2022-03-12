//SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.6.0;

contract Counter {
    //unsigned int
    uint public count = 0;

    function incrementCount() public {
        count ++;
    }
}