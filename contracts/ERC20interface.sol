//SPDK-LICENSE-indentifier: MIT 
pragma solidity ^0.8.0;

abstract contract ERCinterface {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

function totalSupply() public view virtual returns (uint256);

function balanceDF (address who) public view returns (bool);

function transfer(address to, uint256 value) public virtual returns (bool);

function approve(address spender, uint256 value) public virtual returns (bool);
    
function allowance(address owner, address spender) public virtual returns (uint256);

function transferFrom(address from, address to, uint256 value) public view returns (bool);    



}
