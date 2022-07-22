// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Variables {

    string public bestClub = "Itu Blockchain";
    function show() public pure returns(uint){
        // Local
        uint number5 = 17;
        return number5;

        // bestClub'i döndürebiliriz.
    }  

    function show2() public view returns(uint){
        // global variables
        block.difficulty;
        block.gaslimit;
        block.timestamp;
        
        return block.number; // Blockchain'de hangi bloktayız onu okur
    }

    

    // Fixed-Size Types
    bool isTrue = false;

    int number = 12; // -2^256 to 2^256
    int8 number2 = 12; // -2^8 to 2^8 (Daha küçük sayı aralıkları kullanarak daha az yer kaplayabiliriz.)
    uint number3 = 12; // 0 to 2^256 (Negatif sayılar yok)

    address myAddress = 0x47681CCce1494402699cfaF251808c3454d9D026; // Boyutu 20 byte
    bytes32 name1 = "Jordan"; // Boyutunu belirlemezsek dynamic olur.

    // Dynamic-Size Types
    string name2 = "itu blockchain"; // Bytes'lar verileri hexadecimal'e çevirip tutar. String string olarak tutar.
    bytes name3 = "itu";

    uint[] array = [1, 2, 3, 4, 5]; 
    mapping(uint => address) list;
    //list[4] = 0x47681CCce1494402699cfaF251808c3454d9D026; 

    // User Defined Value Types
    struct Human {
        uint ID;
        string name;
        uint age;
    }
    /*
    Human person1;
    person1.ID = 23233333333;
    person1.name = "Ahmet";
    person1.age = 33;
    */

    enum trafficLight {
        RED,
        YELLOW,
        GREEN
    } // Yeşilse şunu yap kırmızıysa bunu yap gibi kullanabiliriz.

    /*
    1 wei = 1;-
    1 ether = 10^18 wei;
    1 gwei = 10^9 wei;

    1 = 1 seconds;
    1 minutes = 60 seconds;
    1 hours = 60 minutes = 3600 seconds;
    */
}