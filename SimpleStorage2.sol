// I'm a comment!
// SPDX-License-Identifier: MIT
// Specifies the license under which the code is distributed. MIT license is a permissive free software license.

pragma solidity 0.8.19;
// Specifies that this contract is compatible with Solidity version 0.8.19.

contract SimpleStorage {
    // This defines a new contract called SimpleStorage. In Solidity, contracts are similar to classes in object-oriented programming.

    uint256 myFavoriteNumber;
    // Declares a state variable named myFavoriteNumber of type uint256 to store a favorite number.

    struct Person {
        uint256 favoriteNumber;
        // A variable to store the favorite number of a person.
        string name;
        // A variable to store the name of a person.
    }

    Person[] public listOfPeople;
    // Declares a dynamic array of Person structs, allowing the contract to store multiple persons. The 'public' keyword allows external access.

    mapping(string => uint256) public nameToFavoriteNumber;
    // Declares a mapping that associates a name (string) with a favorite number (uint256). Mappings function as key-value stores.

    function store(uint256 _favoriteNumber) public {
        // A public function that stores a favorite number. It takes a parameter _favoriteNumber of type uint256.
        myFavoriteNumber = _favoriteNumber;
        // Sets the state variable myFavoriteNumber to the value provided in _favoriteNumber.
    }

    function retrieve() public view returns (uint256) {
        // A public view function that does not change the state of the contract. It returns a uint256 value.
        return myFavoriteNumber;
        // Returns the current value of myFavoriteNumber stored in the contract.
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // A public function that adds a new person to the storage. It takes two parameters: _name of type string and _favoriteNumber of type uint256.
        listOfPeople.push(Person(_favoriteNumber, _name));
        // Creates a new Person struct with the provided favorite number and name, and adds it to the listOfPeople array.
        nameToFavoriteNumber[_name] = _favoriteNumber;
        // Maps the provided name to the favorite number in the nameToFavoriteNumber mapping.
    }
}
