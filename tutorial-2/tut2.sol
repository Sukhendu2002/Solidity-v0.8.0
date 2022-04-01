//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 < 0.9.0;

interface Regulator{
    function checkvalue(uint amount) external returns(bool);
    function loan() external returns(bool);
}

contract Bank{
    uint private value;
    address private owner;

    modifier ownerFunc{
        require(owner==msg.sender,"You dont Have Access" );
        _;
    }

    constructor(uint amount) public{
        value = amount;
        owner = msg.sender;
    }

    function deposit(uint amount) public ownerFunc{
        value +=amount;
    }
    function withdraw(uint amount) public ownerFunc{
        value -= amount;
    }
    function balence() public view returns(uint){
        return value;
    }

    function checkvalue(uint amount) public view returns(bool){
        return value>=amount;
    }

    function loan() public view returns(bool){
        return value>0;
    }

}

contract MyFirstCon is Bank(10){
    string private  name;
    uint private age;

    function setName(string memory _newName) public {
        name = _newName;
    }
    function getName() public view returns(string memory){
        return name;
    }
    function setAge(uint _newAge) public{
        age = _newAge;
    }
    function getAge() public view returns(uint){
        return age;
    }

}
