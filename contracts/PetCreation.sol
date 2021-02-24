pragma solidity >=0.5.0 <0.8.0;
// import '@openzeppelin/contracts/access/Ownable.sol';

contract PetCreation  {

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
   

   function _addPet(string memory _name, uint _petId, string memory _breed) public {
      // require(_checkIdused(_petId));
      // pets.push(_name, _petId, msg.sender, false, '' , _breed);
      emit PetAdded(_petId, _name);

   }

   // function _checkIdUsed(uint _petId) private {
   //    require (uint.length == 15);  // TEST this 




   // }




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


