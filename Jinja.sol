pragma solidity ^0.5.0;
contract Jinja{
    mapping(address => bool) public SHINJA;
    
    function judgeSHINJA() public view returns (uint) {
        if(SHINJA[msg.sender]){
            return 1;
        }else{
            return 0;
        }
    }

    function makeSHINJA() public{
        SHINJA[msg.sender] = true;
    }

    




}