//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract myContract {
    //Mappings
    //mapping (key => value) public names;
    mapping (uint => string) public names;
    mapping (uint => Book) public books;

    //Nested Mapping
    //mapping (key => mapping (key2 => value2)) public myMapping;
    mapping (address => mapping (uint => Book)) public myBooks;   

    struct Book {
        string title;
        string author;
    }
     
    constructor (){
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook (uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook (uint _id, string memory _title, string memory _author) public {
        //msg.sender returns address of sender of msg
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
} 