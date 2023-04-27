let contract = artifacts.require("Token");
let stdcontract = artifacts.require("StdToken");

module.exports = function (deployer) {
  deployer.deploy(contract);
  deployer.deploy(stdcontract);
};
