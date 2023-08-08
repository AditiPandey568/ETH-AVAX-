// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LibraryMembership {
    struct Member {
        uint id;
        string name;
        bool isActive;
        uint booksBorrowed;
    }
    
    struct Book {
        uint id;
        string title;
        bool available;
    }
    
    mapping(uint => Member) public members;
    mapping(uint => Book) public books;
    uint public memberCount;
    uint public bookCount;
    
    constructor() {
        addBook("Introduction to Solidity");
        addBook("Blockchain Basics");
    }
    
    function addMember(uint _id, string memory _name) public {
        require(!members[_id].isActive, "Member is already active");
        assert(bytes(_name).length > 0);
        
        members[_id] = Member(_id, _name, true, 0);
        memberCount++;
    }
    
    function removeMember(uint _id) public {
        require(members[_id].isActive, "Member is not active");
        
        members[_id].isActive = false;
        memberCount--;
    }
    
    function borrowBook(uint _memberId, uint _bookId) public {
        require(members[_memberId].isActive, "Member is not active");
        require(books[_bookId].available, "Book is not available");
        
        members[_memberId].booksBorrowed++;
        books[_bookId].available = false;
    }
    
    function returnBook(uint _memberId, uint _bookId) public {
        require(members[_memberId].isActive, "Member is not active");
        require(!books[_bookId].available, "Book is already returned");
        
        members[_memberId].booksBorrowed--;
        books[_bookId].available = true;
    }
    
    function addBook(string memory _title) public {
        assert(bytes(_title).length > 0);
        
        books[bookCount] = Book(bookCount, _title, true);
        bookCount++;
    }
}
