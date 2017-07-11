// A contract to demonstrate the msg and tx global
/* Every call to a contract (unless getting constants) results in a transaction
which is processed in a block.  Every transaction creates a new msg, tx and 
block globals, as well as a now global variable which is an alias of 
block.timestamp */

pragma solidity ^0.4.0;

contract AcceptTransactions {

    address public owner;
    
    address public latestSender;
    uint public latestValue;
    bytes public latestData;
    bytes4 public latestSig;

    // Constructor, called when contract is created / deployed
    // Contracts are deployed from an address, found in msg
    /* The payable modifier means an amount can be declared upon deployment
    which adds the anount to the contract address. If calling from remix, add a
    value in the Value field top right */ 
    function AcceptTransactions() payable {
        owner = msg.sender;
        latestSender = msg.sender;
        latestValue = msg.value;
        latestData = msg.data;
        latestSig = msg.sig;
    }


    // Note: If calling from remix, add a value in the Value field top right
    function transaction() payable {
            latestSender = msg.sender;
            latestValue = msg.value;
            latestData = msg.data;
            latestSig = msg.sig;
        }
}
