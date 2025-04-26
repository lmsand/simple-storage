// I'm a comment!
// SPDX-License-Identifier: MIT
// Specifies the license under which the code is distributed. MIT license is a permissive free software license.

pragma solidity 0.8.19;                                       // Specifies the Solidity version to be used. Version 0.8.19 is chosen to leverage the latest features and security improvements.

contract SimpleStorage {                                      // This is the main contract. Contracts in Solidity are similar to classes in object-oriented languages.

    uint256 myFavoriteNumber;                                 // Declares a state variable of type uint256 to store a favorite number. State variables are stored permanently in contract storage. 'uint256' is an unsigned integer of 256 bits.

    struct Person {                                           // Defines a struct named Person. Structs are custom data types that can group several variables.
        uint256 favoriteNumber;                                       // A uint256 variable to store the person's favorite number.
        string name;                                          // A string variable to store the person's name. 'string' is a dynamic array of bytes representing text.
    }

    Person[] public listOfPeople;                             // Declares a dynamic array of Person structs. The 'public' keyword makes the array accessible from outside the contract. 'public' is a visibility modifier that allows access to the variable from outside the contract.

    mapping(string => uint256) public nameToFavoriteNumber;         // Declares a mapping to associate names with favorite numbers. Mappings are key-value stores. 'mapping' is a reference type used to create key-value pairs.

    function store(uint256 _favoriteNumber) public {                // A public function to store a favorite number. It takes a uint256 as an input. 'function' defines a function. '_favoriteNumber' is a parameter of type uint256.
        myFavoriteNumber = _favoriteNumber;                         // Sets the state variable myFavoriteNumber to the input value.
    }

    function retrieve() public view returns (uint256) {             // A public view function to retrieve the stored favorite number. It returns a uint256. 'view' indicates that the function does not modify the state.
        return myFavoriteNumber;                                    // Returns the value of the state variable myFavoriteNumber.
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {         // A public function to add a new person to the list. It takes a string and a uint256 as inputs. 'memory' indicates that the variable _name is stored in memory and not in contract storage.
        listOfPeople.push(Person(_favoriteNumber, _name));                            // Adds a new Person struct to the listOfPeople array.
        nameToFavoriteNumber[_name] = _favoriteNumber;                                // Updates the mapping with the new person's name and favorite number.
    }
}
