# Writing Ethereum Smart Contracts in Vyper

In this exercise we are going to work on writing a simple bank
contract similar to the one in this
[repository](https://github.com/ConsenSys-Academy/simple-bank-exercise),
except we are going to write it with Vyper!

To get started, make sure that you are using Truffle version 5.0. You can check which verison of Truffle you are using with `truffle version`. 

If it is below version 5.0, run 
```
npm uninstall -g truffle
``` 
and then 
```
npm install -g truffle@5.0.0-beta.2
```
Now `truffle version` should return at least version 5.0. 

Even though we will not be using the Solidity compiler in this exercise, note that the Solidity compiler version is at least v0.5.0, which [comes with many breaking changes](https://solidity.readthedocs.io/en/latest/050-breaking-changes.html) when upgrading from Solidity version 0.4.x.

Then clone this repository to your machine. You will be working on completing the SimpleBank.vy contract in the contracts directory. There are comments in the file to guide you. You will also want to consult the [Vyper documentation](https://vyper.readthedocs.io/en/latest/).

## Install Vyper

You need to install the Vyper compiler yourself for Truffle to be able to compile Vyper contracts.

Installing Vyper on Linux is as simple as 
```
sudo snap install vyper --edge --devmode
```
Otherwise, [consult the docs](https://vyper.readthedocs.io/en/latest/installing-vyper.html).

## Run the tests

Make sure a development blockchain (like ganache) is running on port 8545 and run the tests with `truffle test`.

## Clean up

You will probably want to revert back to the latest stable version of truffle after you complete this exercise. To do so, run
```
npm uninstall -g truffle
```
to remove the beta version from your machine, followed by
```
npm install -g truffle
```
to reinstall the latest stable version.
