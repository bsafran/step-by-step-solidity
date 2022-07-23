// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Functions2 {
    // Public, External, Internal, Private
    // Public: Bu fonksiyonu hem dışarıdan kullanıcılar çağırabilir hemde kontrat çağırabilir

    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }

    function add2(uint c, uint d) public pure returns(uint){
        return add(c, d);
    }

    function publicKeyword() public pure returns(string memory){
        return "Bu bir public fonksiyondur.";
    }
    function callPublicKeyword() public pure returns(string memory) {
        return publicKeyword();
    }

    // Private: Bu fonksiyona sadece bu kontrat ulaşabilir. Dışarıdan kimse ulaşamaz.
    function privateKeyword() private pure returns(string memory){
        return "Bu bir private fonksiyondur";
    }
    function callPrivateKeyword() public pure returns(string memory){
        return privateKeyword();
    }

    // Internal: Sadece miras alan kontratlar bu fonksiyonu çağırabilir. Dışarıdan kullanıcı çağıramaz.
    function internalKeyword() internal pure returns(string memory){ 
        return "Bu bir internal fonksiyondur.";
    }
    function callInternalKeyword() public pure returns(string memory){
        return internalKeyword();
    }

    // External: Burada ise dışarıdan kullanıcılar çağırabilir. Kontrat içerisinde çağırılamaz.
    function externalKeyword() external pure returns(string memory){
        return "Bu bir external fonksiyondur";
    }
    /*
    function callExternalKeyword() public pure returns(string memory){
        return externalKeyword();
    }
    */ // Bunu kullanamyız. Kontrat içerisinden ulaşamayız.
}