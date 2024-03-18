# Level 3 - Testing the Merkle Proof Verification

Welcome to Level 3 of your Smart Contract Development journey! In this level, you'll put your Merkle proof verification function to the test. Your task is to implement a test case in the TestMerkleProof contract that verifies the 3rd leaf node using the provided proof, root, leaf, and index. Ready to ensure the correctness of your Merkle proof verification function? Let's dive in!

## Objective

Your objective in Level 3 is to test the Merkle proof verification function using the TestMerkleProof contract. By implementing a test case that verifies the 3rd leaf node, you'll ensure that your verification function returns `true` for this specific scenario.

## Task

Your task in Level 3 is to implement a test case in the TestMerkleProof contract that verifies the 3rd leaf node using the provided proof, root, leaf, and index. Here's a breakdown of what you need to do:

- **Test Case Implementation**: Write a test case in the TestMerkleProof contract that verifies the 3rd leaf node using the provided proof, root, leaf, and index.
- **Verification Function Call**: Call the `verify` function with the provided proof, root, leaf, and index parameters.
- **Expected Outcome**: Ensure that the verification function returns `true` for this test case.

## Instructions

### Step 1: Understand the Objective

- Review the objective of Level 3 to understand the task at hand. Your goal is to implement a test case that verifies the 3rd leaf node using the provided proof, root, leaf, and index.

### Step 2: Implement the Test Case

- Navigate to the TestMerkleProof contract and write a test case that verifies the 3rd leaf node using the provided proof, root, leaf, and index.
- Call the `verify` function with the provided parameters and ensure that it returns `true` for this test case.

### Step 3: Verify the Outcome

- After implementing the test case, deploy the TestMerkleProof contract and verify that the verification function returns `true` for the 3rd leaf node.

## Final Thoughts

Testing is a crucial aspect of smart contract development. By implementing a test case for the Merkle proof verification function, you'll ensure that it behaves as expected under different scenarios. After completing Level 3, you'll have confidence in the correctness and effectiveness of your Merkle proof verification implementation.

Congratulations on reaching Level 3! Your commitment to mastering smart contract development is commendable. Keep up the great work, and don't hesitate to seek support from the community if needed.

Celebrate your progress and share your success with others. Together, we'll continue to push the boundaries of blockchain technology!

// \*\* -------------------------------

**Smart Contract Development: Level 1 - Merkle Tree Learning Adventure**

Welcome to Level 1 of your Merkle Tree Learning Adventure! In this exercise, you'll dive into the fascinating world of Merkle trees and lay the groundwork for understanding Merkle proofs in the next level. You'll start by understanding the basics of cryptographic hashing with Keccak256 and then proceed to implement a simple Merkle tree construction contract. Are you ready to embark on this exciting journey? Let's dive in!

**Objective**

Your task is to develop a Solidity smart contract that constructs a Merkle tree from a set of sample transactions. This contract will serve as the foundation for understanding how Merkle trees ensure data integrity in blockchain applications.

**The Essence of Merkle Tree Construction**

Merkle trees are a fundamental component of blockchain technology, enabling efficient and secure verification of large datasets. In this exercise, you'll focus on constructing a Merkle tree using cryptographic hashing and understanding its hierarchical structure. Let's break down the key components and functionalities of our Merkle Tree Construction Contract:

1. Introduction to Keccak256 and Merkle Trees:
   - Implement a function to hash data using the `keccak256` function.
   - Construct a Merkle tree from a set of sample transactions provided in the contract constructor.
   - Understand how Merkle trees are built by hashing individual data elements to create parent nodes until a single root hash is obtained.
