// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Constructor {
    
    // Constant, immutable -> Constant'da veriyi tanımlarken vermek gerekir. Immutable'da constructor içerisinde belirleyebiliriz.
    uint public constant number = 10;
    /*
    function set(uint n) public {
        number = n; 
    }
    */ // Bu fonksiyon hata verir.

    address public immutable owner;
    uint public immutable number2; // Constant'dan farkı constructor içinde ilk değerini verebilirz.
    constructor(uint num) {
        number2 = num;
        owner = msg.sender;
    }




    /*
    string public tokenName;
    uint public totalSupply;

    constructor(string memory name, uint number) {
        tokenName = name;
        totalSupply = number;
    }

    function set(uint number) public {
        totalSupply = number;
    }
    */


}