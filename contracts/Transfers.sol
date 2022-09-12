// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Bank {
    
    mapping(address => uint) balances;

    function sendEtherToContract() payable external {
        balances[msg.sender] += msg.value;
    }

    function showBalance() external view returns(uint) {
        return balances[msg.sender];
    }

    function withdraw(address payable to, uint amount) external {
        //require(balances[msg.sender] >= amount, "Yetersiz bakiye");
        /* Yöntem 1
        bool ok = to.send(amount);
        return ok;
        */
        /* Yöntem 2
        (bool sent, bytes memory data) = to.call{value: amount}("");
        return sent;
        */
        to.transfer(amount);
        balances[msg.sender] -= amount;
    }

    uint public receiveCount = 0;
    uint public fallbackCount = 0;
    receive() external payable {
        receiveCount += 1;
    }

    fallback() external payable {
        fallbackCount += 1;
    }

}