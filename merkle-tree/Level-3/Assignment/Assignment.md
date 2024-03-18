# Level 3 - Testing the Merkle Proof Verification

Welcome to Level 3 of your Smart Contract Development journey! In this level, you'll put your Merkle proof verification function to the test. Your task is to implement a test case in the TestMerkleProof contract to verify the Merkle proof using the provided proof, root, leaf, and index. Ready to ensure the correctness of your Merkle proof verification function? Let's dive in!

## Objective

Your objective in Level 3 is to implement a test case in the TestMerkleProof contract that verifies the Merkle proof using the provided proof, root, leaf, and index. Here's a breakdown of what you need to do:

- **Test Case Implementation**: Write a test case in the TestMerkleProof contract that verifies the Merkle proof using the provided proof, root, leaf, and index.
- **Verification Function Call**: Call the `verify` function with the provided proof, root, leaf, and index parameters.
- **Expected Outcome**: Ensure that the verification function returns `true` for this test case.

## Instructions

### Step 1: Understand the Objective

Review the objective of Level 3 to understand the task at hand. Your goal is to implement a test case that verifies the Merkle proof using the provided proof, root, leaf, and index.

### Step 2: Implement the Test Case

**Define the Contract:** Start by defining the contract named TestMerkleProof. Remember to specify that it inherits from the MerkleProof contract.

**Declare the Public Hashes Array:** Inside the contract, declare a public array named hashes of type bytes32[]. This array will hold the hashed values of the transactions.

**Implement the Constructor:** Write a constructor function that initializes the contract. Inside the constructor:

- Define an array named transactions containing : ["alice -> bob", "bob -> dave", "carol -> alice", "dave -> bob"]

  - Iterate through each transaction in the transactions array. It hashes each transaction individually. These hashes become the leaves of the Merkle tree.
  - Hash each transaction using the keccak256 function and push the hash into the hashes array.

  - The contract then repeatedly pairs up these hashes and hashes the pairs, moving up the tree until it calculates the final "Merkle root".

**Build the Merkle Tree:** After initializing the hashes array with the individual transaction hashes, we'll construct the Merkle tree using a recursive algorithm. Here's how it works:

1. **Initial Hashes:** We start by hashing each individual transaction from the transactions array and pushing these hashes into the hashes array. This ensures that each transaction is represented by its hash.

2. **Tree Construction:** We then determine the number of transactions (n) and initialize an offset variable to 0.
   - In each iteration of the while loop, we pair adjacent hashes to create parent nodes. We start by pairing the first two hashes, then the next two, and so on, until we've paired all adjacent hashes.
   - For each pair of hashes, we concatenate them using abi.encodePacked() and hash the result using keccak256(). This produces a new hash representing the parent node.
   - We push these parent node hashes into the hashes array.
   - After each iteration of the loop, we update the offset variable to point to the next set of hashes to be paired.
   - We halve the value of n in each iteration to determine the number of pairs to be formed in the next iteration.

**Define the getRoot Function:** Implement a public view function named getRoot that returns the root hash of the Merkle tree. This function should return the last element of the hashes array.

### Step 3: Verify the Outcome

**Deploy:** Deploy the TestMerkleProof contract to a blockchain environment (either a test network or a live blockchain).

**Get the Merkle Root:** After deployment, call the getRoot() function on your contract instance. This will provide you with the Merkle root hash.

**Generate a Proof:** To prove a specific transaction:

- Determine the index (position) of your transaction within the original list.
- Calculate the hash of your transaction using keccak256.
- Using an off-chain script or tool, generate the Merkle proof. This is a list of sibling hashes needed for verification.

**Verify:** Call the verify() function from the MerkleProof contract, providing:

- The Merkle proof.
- The Merkle root.
- The hash of your transaction.
- The index of your transaction.
- The function will return true if the transaction is valid, and false otherwise.

## Final Thoughts

Testing is a crucial aspect of smart contract development. By implementing a test case for the Merkle proof verification function, you'll ensure that it behaves as expected under different scenarios. After completing Level 3, you'll have confidence in the correctness and effectiveness of your Merkle proof verification implementation.

Celebrate your progress and share your success with others. Together, we'll continue to push the boundaries of blockchain technology!
