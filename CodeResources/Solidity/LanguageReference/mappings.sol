pragma solidity ^0.4.0;

contract MappingsExamples {

    //Use a mapping to store balances against addresses
    mapping(address => uint) public balances;

    function addBalance(uint _value) {
        balances[msg.sender] = _value;
    }

    function getBalance(address _address) constant returns (uint) {
        return balances[_address];
    }

}
