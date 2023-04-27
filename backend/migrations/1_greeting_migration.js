let contract = artifacts.require("Greeting");

module.exports = function (deployer) {
  deployer.deploy(contract, "Hello World!");
};
