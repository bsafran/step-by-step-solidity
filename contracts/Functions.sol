// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Functions {

    uint public x = 3;
    // uint public luckyNumber = 7;// Fonksiyon yazmadan böyle de olabilir

    
    uint luckyNumber = 7;
    function showNumber() public view returns(uint) {
        return luckyNumber;
    }
    function setNumber(uint newNumber) public {
        luckyNumber = newNumber;
    }

    function addNumber(uint y) public view returns(uint){
        return x + y;
    }
    
    function add(uint a, uint b) public view returns(uint){
        return a + b + block.timestamp;
    }

    function add2(uint a, uint b) public pure returns(uint) { // blockchain ve kontrat ile işlem yapmadığımızda pure kullanırız
        return a + b;
    }
    /*
    function nothing() public pure returns(uint x, bool y, bool z){ // Returns içerisinde değişken ismi eklersek fonksiyon içerisinde return kullanmamıza gerek yok.
        x = 6;
        y = false;
        z = true;
    }
    */
    
}