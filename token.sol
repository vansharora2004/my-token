// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    // public variables here
    string public tokenName = "Arora";
    string public tokenSymbol = "AR";
    uint public tokenSupply = 0;

    // mapping variable here
    mapping (address => uint) public balance;

    // mint function here
    function mint(address _address, uint _value) public {
      tokenSupply += _value;
      balance[_address] += _value;
    }

    // burn function here
    function burn(address _address, uint _value) public {
       if (balance[_address] >= _value) {
          tokenSupply -= _value;
         balance[_address] -= _value;
      } 
    }
}
