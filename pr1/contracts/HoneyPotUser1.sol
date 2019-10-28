pragma solidity ^0.5.8;
import "./HoneyPot.sol";

contract HoneyPotUser1{
    HoneyPot public honeyPot;
    constructor(address _hPotCollect) public{
        honeyPot = HoneyPot(_hPotCollect);
    }
    function kill() public {
        selfdestruct(msg.sender);
    }
    function collect() public payable{
        honeyPot.put.value(msg.value);
        honeyPot.get();
    }
    function getBalance() public view  returns(uint256) {
        return(address(this).balance);
    }
    function() external payable{
    }
}