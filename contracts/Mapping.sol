// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Mapping {

    mapping(address => bool) public registered;
    mapping(address => int256) public favNums;
    function register(int256 _favNums) public {
        require(!registered[msg.sender], "Kullanici daha once kayit yapti.");
        registered[msg.sender] = true;
        favNums[msg.sender] = _favNums;
    }

    function isRegistered() public view returns(bool){
        return registered[msg.sender];
    }

    function deleteRegistered() public {
        require(isRegistered(), "Kullanici kayitli degil!");
        delete(registered[msg.sender]);
        delete(favNums[msg.sender]);
    }
}

contract NestedMapping{
    mapping(address => mapping(address => uint256)) public debts;

    function incDebt(address _berrower, uint256 _amount) public {
        debts[msg.sender][_berrower] += _amount;
    }

    function decDebt(address _berrower, uint256 _amount) public {
        require(debts[msg.sender][_berrower] >= _amount, "Not enough debt");
        debts[msg.sender][_berrower] -= _amount;
    }

    function getDebt(address _berrower) public view returns(uint256){
        return debts[msg.sender][_berrower];
    }
}