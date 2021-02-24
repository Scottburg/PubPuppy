pragma solidity ^0.7.0;
import '@openzeppelin/access/Ownable.sol';

contract Pet is Ownable {

   event PetAdded(uint id, string name);

   struct Pet {
      string name;
      uint id; // 15 digit number 
      address owner;
      bool missing;
      string area;
      string breed;
   }

   Pet[] public pets;
   

   function _addPet(string memory _name, uint _petId, string _breed) private {
      require(_checkIdused(_petId));
      pets.push(_name, _petId, msg.sender, false, '' , _breed);
      emit PetAdded(_PetId, _name)

   }

   function _checkIdUsed(uint _petId) private {
      require (uint.length == 15);  // TEST this 




   }




}

// TO DO
// add pet to Blockchain
// update name, (missing, area) if owner. 
// add functions to transfer ownership;
// check ID is not taken 


//EXTRA 
// add map of all missing pets 
//include pictures in offline db.
//connect front end to no sql database for extra info. pictures etc.


