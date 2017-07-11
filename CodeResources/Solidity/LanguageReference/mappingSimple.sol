pragma solidity ^0.4.0;

contract MappingSimple {

    //Use a mapping to store balances against addresses
    mapping(address => uint) public balances;

    /*A setter taking the _value argument to store in the balances mapping at
    the address index*/
    /// @param _value The amount sent from the sender's address
    function addBalance(uint _value) {
        balances[msg.sender] = _value;
    }

    /*There is no need for this getter beccause balances mapping is public,
    this shows how value could be retreived from the mapping*/
    /// @param _address The address stored in the mapping 
    /// @return The balance stored in the mapping for the given address
    function getBalance(address _address) constant returns (uint) {
        
        /*returns the value found at the _address index, as if it was an array
        But a mapping is a hash table, not an array, so is not iterable*/
        return balances[_address];
        
    }

}
