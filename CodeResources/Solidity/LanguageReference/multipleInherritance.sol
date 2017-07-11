// demonstrating multiple inheritence

pragma solidity ^0.4.0;

contract A {
    
    // functions for contract A
    
}

contract B {
    // functions for contract B
}

contract C {
    
    string public name;
    
    //constructor function
    /// @param _name Input a name for the contract
    function C(string _name) {
        name = _name;
    }
    
    //functions for contract C
    
}

contract Inherrited is A, B, C("John Smith") {
    
    // This contract will inherrit from A, B and C
    // C has a contract expecting a string arguement to be passed in
    
}
