const Pet = artifacts.require('Pet'); //artifacts creates a JS abstraction that allows you to test with mocha/chai syntax.
//pet without .sol is fine as it checks the contracts based on the name #

contract('Pet', (contracts) => {
  let accounts = ['alice', 'bob', 'chuck'];
  it('should be able to create a new pet', async () => {
    const contractInstance = await Pet.new();
  });
});
