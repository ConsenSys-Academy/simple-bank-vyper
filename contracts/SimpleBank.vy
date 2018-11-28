#
# It might be easier to write the Vyper contract at vyper.online to 
# get syntax highlighting and easier compliation

#
# Events must be declared at the top of the file
#

Enrolled: event({ accountAddress: indexed(address)  })
DepositMade: event ({ accountAddress: indexed(address), amount: wei_value  })
Withdrawal: event({ accountAddress: indexed(address), withdrawAmount: wei_value, newBalance: wei_value })

#
# State variables
#

userBalances: wei_value[address]
enrolled: public(bool[address])
owner: public(address)

#
# Functions
#

# @notice set the contract creator as the owner

@public
def __init__():
    self.owner = msg.sender

# @notice Get balance
# @return The balance of the user
# @dev Use the keyword that indicates the state is not changed

@public
@constant
def balances() -> wei_value:
    return self.userBalances[msg.sender]

# @notice Enroll a customer with the bank
# @return The users enrolled status
# @dev Emit the appropriate event

@public
def enroll() -> bool:
    self.enrolled[msg.sender] = True
    log.Enrolled(msg.sender)
    return True

# @notice Deposit ether into bank
# @return The balance of the user after the deposit is made
# Add the appropriate keyword so that this function can receive ether
# @dev Use the appropriate global variables to get the transaction sender and value
# Emit the appropriate event    

@public
@payable
def deposit() -> wei_value:
    self.userBalances[msg.sender] += msg.value
    log.DepositMade(msg.sender, self.userBalances[msg.sender])
    return self.userBalances[msg.sender]

# @notice Withdraw ether from bank
# @dev This does not return any excess ether sent to it
# @param withdrawAmount amount you want to withdraw
# @return The balance remaining for the user
# @dev Emit the appropriate event    

@public
def withdraw(withdrawAmount: wei_value) -> wei_value:
    assert(withdrawAmount <= self.userBalances[msg.sender])
    self.userBalances[msg.sender] -= withdrawAmount
    send(msg.sender, withdrawAmount)
    log.Withdrawal(msg.sender, withdrawAmount, self.userBalances[msg.sender])
    return self.userBalances[msg.sender]

# With no fallback function specified, a fallback is automatically generated that will revert any transaction that it processes. This is not the case in Solidity.
