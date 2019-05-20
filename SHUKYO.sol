pragma solidity ^0.5.0;
contract smartShukyo{
   struct SHUKYO{
        uint no;
        string name;
        address kyouso;
        uint kazu;
    }
    
    SHUKYO[] public SHUKYOs;
    
    function makeSHUKYO(string memory _name) public {
        uint no = SHUKYOs.length + 1;
        SHUKYOs.push(SHUKYO(no,_name,msg.sender,1));
        faith[msg.sender] = _name;
    }
    
    function getSHUKYOquantity() public view returns (uint){
        return SHUKYOs.length;
    }

    function getSHUKYO(uint index) public view returns (uint,string memory,address,uint){
        return (SHUKYOs[index].no,SHUKYOs[index].name,SHUKYOs[index].kyouso,SHUKYOs[index].kazu);
    }
    
    
    mapping(address => string) public faith;
    
    function NYUSHIN(uint index) public{
        faith[msg.sender] = SHUKYOs[index].name; 
        SHUKYOs[index].kazu = SHUKYOs[index].kazu + 1;
    }
    
    function getfaith() public view returns (string memory){
        return faith[msg.sender];
    }
    
}