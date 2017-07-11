// Simple demo of a contract with a constructor. 
// A constuctor automatically called when the contract is created (deployed)

pragma solidity ^0.4.0;

contract CreateMe {
    
    string public deployedInfo;
    
    // Constructors are created using the name of the contract they belong to 
    // Contrstructors are automatically called upon contract creation only
    // Only one constructor allowed per contract (no overloading)
    // Constructors are optional
    /// @param _someInfo An argument passed in to the constructor
    function CreateMe (string _someInfo) {
        deployedInfo = _someInfo;
    }
    
}
