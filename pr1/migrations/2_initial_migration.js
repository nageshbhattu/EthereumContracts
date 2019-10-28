 
var honeyPot = artifacts.require("HoneyPot");
module.exports = function(deployer) {
  deployer.deploy(honeyPot);
};
