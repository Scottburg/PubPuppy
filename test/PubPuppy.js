const PetCreation = artifacts.require('PetCreation'); //artifacts creates a JS abstraction that allows you to test with mocha/chai syntax.
//pet without .sol is fine as it checks the contracts based on the name #

contract('PetCreation', (accounts) => {
  let [alice, bob, chuck] = accounts;
  it('should be able to create a new pet', async () => {
    const contractInstance = await PetCreation.new();
    const res = await contractInstance._addPet(
      'barkDog',
      123456789012345,
      'Wulf Hound',
      { from: alice }
    );
    console.log(res.logs);
    assert.equal(res.receipt.status, true);
    assert.equal(res.logs[0].args.name, 'barkDog');
  });
});
