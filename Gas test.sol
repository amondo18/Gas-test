// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

contract GasTest {

    struct Test1 {
        uint256 id;
        uint64 dna;
        uint64 class;
        uint64 pin;
        uint256 jam;
        uint256 jazz;

        
    }


    Test1[] data;


    constructor() {
        
    }

    mapping (address => Test1) ownerToData;


    function fillOut(uint256 id, uint64 dna, uint64 class, uint64 pin, uint256 jam, uint256 jazz) external {
        //ownerToData[msg.sender].push(Test(id,dna,class,pin));
        //ownerToData[msg.sender];
        ownerToData[msg.sender].id = id;
        ownerToData[msg.sender].dna = dna;
        ownerToData[msg.sender].class = class;
        ownerToData[msg.sender].pin = pin;
        ownerToData[msg.sender].jam = jam;
        ownerToData[msg.sender].jazz = jazz;
        
    }


    function readAddr(address _Address) external view returns(uint256) {
        return ownerToData[_Address].id;
    }

    function readFirst() external view returns(uint256) {
        return ownerToData[msg.sender].id;
    }

    function readLast() external view returns(uint256) {
        return ownerToData[msg.sender].pin;
    }
    function readTwo() external view returns(uint256, uint64) {
        return (ownerToData[msg.sender].id, ownerToData[msg.sender].dna);
    }

    function readThirdSlot() external view returns(uint256) {
        return (ownerToData[msg.sender].jam);
    }
    function readForthSlot() external view returns(uint256) {
        return (ownerToData[msg.sender].jazz);
    }
    function readLastSlot() external view returns(uint64, uint64, uint64) {
        return (ownerToData[msg.sender].dna, ownerToData[msg.sender].class, ownerToData[msg.sender].pin);
    }
    function readAllSlot() external view returns(uint256, uint64, uint64, uint64, uint256, uint256) {
        return (ownerToData[msg.sender].id, ownerToData[msg.sender].dna, ownerToData[msg.sender].class, ownerToData[msg.sender].pin, ownerToData[msg.sender].jam, ownerToData[msg.sender].jazz);
    }
}