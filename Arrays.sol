//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract myContract {
    //Array
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "banana", "carrot"];
    string[] public values;

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint) {
        return values.length;
    }
}