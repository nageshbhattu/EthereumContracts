pragma solidity >=0.4.21 <0.6.0;
contract simple{
    function deposit() public payable{

    }
    function getBalance() public view returns(uint256){
        return address(this).balance;
    }
    function deposit(uint256 amount) public payable {
        require(msg.value==amount,"Some thing Wrong");
    }
}