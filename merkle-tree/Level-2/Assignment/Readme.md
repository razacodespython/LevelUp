# Smart Contract Development: Level 2 - Merkle Proof Verification Contract

Welcome to Level 2 of your Smart Contract Development journey! Building on the foundational knowledge from Level 1, you're now stepping into the realm of Merkle proof verification on Ethereum. This level challenges you to implement a function to verify the integrity of a leaf node in a Merkle tree given the proof, root, leaf, and index. Ready to elevate your blockchain development skills? Let's get started!

## Objective

Your mission in Level 2 is to implement a function to verify the integrity of a leaf node in a Merkle tree given the proof, root, leaf, and index. This function will allow users to efficiently verify the correctness of data stored in a Merkle tree without having to traverse the entire tree.

## The Essence of Merkle Proof Verification

The `verify` function in the MerkleProof contract is designed to facilitate the verification of Merkle proofs. Here's a breakdown of its functionality:

- **Verification Function**: The `verify` function takes in a Merkle proof, root, leaf, and index as arguments.
- **Algorithm Implementation**: Inside the function, the provided Merkle proof is iterated over, and the hash of the leaf node is computed based on the proof elements, root, and index.
- **Hash Comparison**: The computed hash is compared with the provided root hash. If they match, the function returns `true`, indicating that the proof is valid; otherwise, it returns `false`.

### Explanation of `abi.encodePacked()`

- **ABI:** Stands for Application Binary Interface. It's a standard way of defining how to interact with smart contracts and how data is structured between them.
- **Encoding:** In Solidity, different data types need to be encoded in a specific format before they can be hashed. `abi.encodePacked()` tightly packs data according to the ABI standard.
- **Why it's Needed:** `keccak256()` expects a single `bytes` input. `abi.encodePacked()` ensures that our input string (or any other data types) is converted into this expected `bytes` format.

## **Instructions**

**Step 1: Set Up Your Environment**

- Prepare Your Workspace: Create a New Folder called `merkle_tree_level1`.
- Initialize a New Project: Start with a clean slate using `forge init`.

**Step 2: Write the Contract**

- Implement the `verify` Function:
  - Define a function called `verify` that checks if a leaf node's integrity in a Merkle tree is valid.
  - Input Parameters: The `verify` function takes in four parameters:
    - `proof`: An array containing the proof elements.
    - `root`: The root hash of the Merkle tree.
    - `leaf`: The hash of the leaf node to verify.
    - `index`: The index of the leaf node in the Merkle tree.
  - Verify Process:
    - Start with the hash of the leaf node.
    - Iterate through each proof element:
      - If the index is even, concatenate the current hash with the proof element and compute the hash of the concatenation.
      - If the index is odd, concatenate the proof element with the current hash and compute the hash of the concatenation.
      - Update the hash value and divide the index by 2.
    - Compare the final hash value with the provided root hash.
    - If they match, return `true`, indicating that the proof is valid; otherwise, return `false`.

By following these steps, the `verify` function allows users to efficiently verify the correctness of data stored in a Merkle tree without having to traverse the entire tree. If you have any further questions or need clarification on any step, feel free to ask!

Stuck? Check [Assignment-Hints](../Assignment-Hints/Hints.md) for guidance.

**Step 3: Compile**

- Ensure Accuracy: Compile your contract and resolve any errors.

## Final Thoughts

This assignment isn't just about writing code; it's about understanding the underlying principles of Merkle proof verification and applying that knowledge to solve real-world problems in blockchain development.

After successfully implementing the `verifyMerkleProof` function, give yourself a pat on the back. You've completed Level 2, marking a significant milestone in your journey as a smart contract developer.

Wondering if you've done it right? Share a [scrollscan](https://scrollscan.com/) link of your verified contract in the [telegram group](https://t.me/+vRIl8Wkm0B0zOTQx), and we'll provide feedback. Whether it's perfect or needs some tweaks, remember that the attempt itself is a great achievement.

Celebrate your progress in your own way, whether it's through discussions in the community channels or sharing your success on social media.

Feel free to tag us in your celebrations!
