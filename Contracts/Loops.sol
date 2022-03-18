//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract myContract {
    //Conditionals
    uint[] public numbers = [1,3,4,5,6,7,8,9,10];

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function isEvenNumber (uint _number) public view returns (bool) {
            if (_number % 2 == 0)
                return true;
            else
                return false;
        }

    //Loops 
    function countEvenNumbers() public view returns (uint) {
        uint count = 0;

        for (uint i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])){
                count++;
            }
        }
        return count;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == owner);
    }
}