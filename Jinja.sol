pragma solidity ^0.5.0;
contract Jinja{
    struct SHINJA{
        string name;
        bool judge;
    }
    mapping(address => SHINJA) public SHINJAs;
    
    function judgeSHINJA() public view returns (uint) {
        if(SHINJAs[msg.sender].judge){
            return 1;
        }else{
            return 0;
        }
    }

    function makeSHINJA(string memory name) public{
        SHINJAs[msg.sender].name = name;
        SHINJAs[msg.sender].judge = true;
    }
}