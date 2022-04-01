//SPDX-License-Identifier - MIT
pragma solidity >=0.5.0 < 0.9.0;

contract MyFirstCon{
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
