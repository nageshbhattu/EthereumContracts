pragma solidity >=0.4.21 <0.6.0;
contract HoneyPot {
  mapping (address => uint) public balances;
  address[] adds;
  constructor() public payable {
    put();
  }
  function put() public payable {
    balances[msg.sender] = msg.value;
    adds.push(msg.sender);
  }
  function get() public {
    uint transferAmt = 1 ether;
    if(balances[msg.sender]>=transferAmt){
      (bool success, bytes memory returnData) = msg.sender.call.gas(20000000).value(transferAmt)("Transaction Done");
    }
    balances[msg.sender] = 0;
  }
  function getAddressBalance(address a) public view returns(uint) {
    return balances[a];
  }
  function getBalance() public view  returns(uint256) {
     return(address(this).balance);
  }
}