//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.12;

contract hotelRoom {
    
    // Enumerator
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;

    address payable public owner;

    // Events
    event Occupy (address _occupant, uint _value);

    constructor(){
        owner =  payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    
    // Modifiers
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided. ");        
        _; 
    }
    
    // Special Function Receive used to receive ETH externally
    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}