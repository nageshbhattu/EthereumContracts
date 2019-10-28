var HoneyPot = artifacts.require("./HoneyPot.sol");
var HoneyPotUser = artifacts.require("./HoneyPotUser.sol");

module.exports = function(deployer) {
  deployer.deploy(HoneyPotUser, HoneyPot.address)
};