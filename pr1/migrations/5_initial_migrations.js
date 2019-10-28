var HoneyPot = artifacts.require("./HoneyPot.sol");
var HoneyPotUser1 = artifacts.require("./HoneyPotUser1.sol");

module.exports = function(deployer) {
  deployer.deploy(HoneyPotUser1, HoneyPot.address)
};