# Writing Ethereum Smart Contracts in Vyper

In this exercise we are going to work on writing a simple bank
contract similar to the one in this
[repository](https://github.com/ConsenSys-Academy/simple-bank-exercise),
except we are going to do it with Vyper!

To get started, make sure that you are using Truffle version 5.0. You can check which verison of Truffle you are using with `truffle version`. If it is below version 5.0, run `npm uninstall -g truffle` and then `sudo npm install -g truffle@beta`. Now `truffle version` should return at least version 5.0. Also note that the Solidity compiler version is at least v0.5.0, which [comes with many breaking changes](https://solidity.readthedocs.io/en/latest/050-breaking-changes.html) when upgrading from Solidity version 0.4.x  

Then clone this repository to your machine. You will be working on completing the SimpleBank.vy contract in the contracts directory. There are comments in the file to guide you. You will also want to consult the [Vyper documentation](https://vyper.readthedocs.io/en/latest/).

**The SimpleBank.vy contract is complete and tests are passing in this version of the exercise. It will be gutted before distributing to students.**

## Install Vyper

You need to install the Vyper compiler yourself for Truffle to be able to compile Vyper contracts.

Installing Vyper on Linux is as simple as `sudo snap install vyper --edge --devmode`. Otherwise, [consult the docs](https://vyper.readthedocs.io/en/latest/installing-vyper.html).

## Run the tests

Make sure a development blockchain (like ganache) is running on port 8545 and run the tests with `truffle test`.