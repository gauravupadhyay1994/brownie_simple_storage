// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToInteger;

    People[] public people;
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToInteger[_name] = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
