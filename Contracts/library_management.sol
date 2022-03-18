//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.6.0;

contract myContract {
    
    //Mappings
    //mapping(key => value) myMapping

    mapping(uint => string) public sector;
    mapping(uint => Book) public books;

    //struct asset
    struct Book {
        string title;
        string author;
    }

    constructor() public {
        sector[1] = "Agriculture";
        sector[2] = "Automotive";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
}