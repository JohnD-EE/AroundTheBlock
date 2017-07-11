// A few examples of implementing abstract contracts

pragma solidity ^0.4.0;

/* An abstract contract defines mehtods (functions) which must be implemented
by other contracts which use it */
contract AbstractContract {
    
    uint setMe;
    
    /// @param _value Takes the _value argument
    /// @return Must return a boolean value (true or false)
    function implementMe(uint _value) returns (bool success);
    /* note that this function has no braces {} so it is only defined and not
    implemented */
        
}

/* Valid implementation, implements the function correctly */
contract Implementation is AbstractContract {
 
    function implementMe(uint _value) returns (bool success) {
        setMe = _value; //setMe is already declared in the abstract contract
        return true; //returns the local success boolean variable
    }
    
}

/* This is invalid because it does not implement the functions from the
abstract contract */
contract InvalidImplementation1 is AbstractContract {
 
    //no functions implemented
    
}

/* Although this contract has the ImplementMe function, it is invalid because it 
doesn't have the correct signature */
contract InvalidImplementation2 is AbstractContract {
 
    //incorect signature - missing the unit _value argument
    function implementMe() returns (bool success) {
        return true;
    }
    
}
