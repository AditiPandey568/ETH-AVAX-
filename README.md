# *Error Handling Smart Contract*
The ErrorHandling smart contract demonstrates different error handling mechanisms in Solidity. It provides examples of using require, assert, and revert statements to handle errors and exceptions in Solidity contracts.

# Discription-
Solidity smart contract, named "LibraryMembership," represents a simplified system for managing library memberships and borrowed books. It includes the following functionalities-

* Members Management:
The contract maintains a record of library members.
Members are identified by a unique ID and have a name.
New members can be added, and existing members can be deactivated (removed) from the library system.

 * Book Management:
The contract tracks available books that can be borrowed.
Books are identified by a unique ID and have a title.
New books can be added to the library's collection.

* Borrowing and Returning Books:
Members can borrow available books from the library.
Borrowed books are marked as unavailable until returned.
Members can return borrowed books, making them available again.

* Contract Initialization:
The contract is initialized with two sample books upon deployment.

# Getting Started
To use the ErrorHandling contract, you'll need to have a Solidity development environment set up. Make sure you have the following prerequisites installed:
* Solidity compiler (version 0.8.x)
## Usage
1. Clone the repository or create a new Solidity file and copy the code from ErrorHandling.sol into it.

2. Compile the Solidity code using the Solidity compiler. Make sure to set the compiler version to 0.8.x.

3. Deploy the contract to a compatible blockchain network, such as Ethereum.

4. Interact with the Contract:
After deploying the contract, you'll see the contract's functions listed below the contract details.
Click on the function you want to interact with (e.g., "addMember").
Enter the required parameters (e.g., member ID and name) in the input fields provided.
Click on the "transact" button to execute the function.
then can also interact with other functions, such as "removeMember," "borrowBook," "returnBook," and "addBook," in a similar manner.

5.  For Viewing Contract State:
 In the "Deployed Contracts" section,we see the deployed contract instance with its functions and state variables. then just interact with the contract using the provided interface.

# Error Handling Mechanisms
The ErrorHandling contract demonstrates the following error-handling mechanisms:

* require statement: Used to enforce a condition that must be met for the function to continue execution. It throws an exception if the condition is not met.

* assert statement: Used to check for conditions that should never be false. It is typically used to validate internal consistency. If the condition is false, it indicates an internal error, and the contract execution is reverted.

* revert statement: Used to revert the current transaction and throw an exception with a specific error message.

# License
The ErrorHandling smart contract is licensed under the MIT License.
