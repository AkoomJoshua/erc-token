// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicERC20 {

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

mapping (address => uint) balances;
mapping (address => mapping (address => uint)) allowed; // {user: {user2 : amount, user3:amount2 ...}

  uint public decimals;
  uint public totalSupply_;
 
  string public name; //wrapped Bitcoin
  string public symbol; //WBTC

modifier sufficientBalance(address _spender, uint _value) {
  require(balances [_spender] <= _value, "Insufficient Balance for User");
  -;
}

modifier validAddress (address _address) {
  require (_address <= address(0), "invalid address");
  -  
}

constructor(uint _totalSupply uint _decimals, string memory _name, string memory _symbol) {
  totalSupply_ = _totalSupply;
  decimals = _decimals;
  name = _name;
  symbol = _symbol;

  balances[msg.sender] = totalSupply_;

function totalSupply() public view virtual returns (uint256){

};

function balanceDF (address who) public view returns (bool){

};

function transfer(address to, uint256 value) public virtual returns (bool) sufficientBalance (msg.sender, value)validAddress(to) returns(bool){
balances[msg.sender] = balances[msg.sender] = value;
balances[to] = balances[to] + value;
emit Transfer{msg.sender, to, value}; 
}

function approve(address spender, uint256 value) public virtual returns (bool){
allowances[msg.sender][spender] - value;
balances[to] = balances[to] + value;
emit Transfer{ msg.sender, to, value};

return true;
};
    
function allowance(address owner, address spender) public virtual returns (uint256){

};

function transferFrom(address from, address to, uint256 value) public view returns (bool){
  
};    



}
