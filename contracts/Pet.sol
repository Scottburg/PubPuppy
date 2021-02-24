pragma solidity ^0.8.0;
import '@openzeppelin/access/Ownable.sol';

contract Pet is Ownable {

   struct Pet {
      string name;
      uint id; // 15 digit number 
      address owner;
      bool missing;
      string area;
      string breed;
   }

   Pet[] pubnlic pets;
   

   function _addPet(string memory _name, uint _petId) internal {

     
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


