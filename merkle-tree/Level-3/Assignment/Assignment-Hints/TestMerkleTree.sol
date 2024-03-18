// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title TestMerkleProof
 * @notice A contract for  that verifies the Merkle proof using the provided proof, root, leaf, and index.
 */

contract TestMerkleProof {
    /**
     * @notice bytes32[] array will hold the hashed values of the transactions.
     */

    constructor() {
        /**
        string[4] memory transactions = [
            "alice -> bob",
            "bob -> dave",
            "carol -> alice",
            "dave -> bob"
        ]; 
        
         */
        /**
         * @notice Initialize Hashes Array: As mentioned earlier, start by declaring a `bytes32[]` array named `hashes` to hold the hashed values of the transactions.
         * This array will be used to construct the Merkle tree.
         * @type {bytes32[]} hashes - Array to hold the hashed values of the transactions.
         */

        /**
         * @notice Hash Individual Transactions: Loop through each transaction in the `transactions` array.
         * For each transaction, use the `keccak256` hashing function to compute its hash and push it into the `hashes` array.
         * @param {string[]} transactions - Array containing individual transactions.
         */

        /**
         * @notice Pairing and Hashing: Once all individual transactions are hashed and stored in the `hashes` array, proceed to build the Merkle tree.
         * This involves repeatedly pairing adjacent hashes and hashing them together to create parent nodes.
         * @type {number} n - Length of the `hashes` array.
         * @type {number} offset - Offset value for array indexing.
         */
        
        /**
         * @notice While Loop Iteration: Use a while loop to iterate through the `hashes` array.
         * Inside the loop, start with `n` set to the length of the `hashes` array and `offset` initialized to 0.
         * @type {number} n - Length of the `hashes` array.
         * @type {number} offset - Offset value for array indexing.
         */

        /**
         * @notice Pairing Adjacent Hashes: Within the while loop, iterate through the `hashes` array by pairs.
         * For each pair of adjacent hashes, concatenate them together and hash the resulting concatenation to compute the parent node hash.
         * Push this parent node hash into the `hashes` array.
         * @type {number} n - Length of the `hashes` array.
         * @type {number} offset - Offset value for array indexing.
         */

        /**
         * @notice Updating Variables: After processing each level of the tree, update the `offset` by adding `n` to it, and divide `n` by 2 to move up to the next level of the tree.
         * Continue this process until `n` becomes 0, indicating that the root hash has been computed.
         * @type {number} n - Length of the `hashes` array.
         * @type {number} offset - Offset value for array indexing.
         */

        /**
         * @notice Root Hash: The root hash of the Merkle tree will be the last element in the `hashes` array after the while loop completes.
         * @type {bytes32} - The root hash of the Merkle tree.
         */

        /** 
         * @notice Implement a function name getRoot() that retrieves the root hash of the Merkle tree.
         * @method getRoot
         * @description Returns the root hash of the Merkle tree.
         * @returns {bytes32} - The root hash of the Merkle tree.
         */
    }
}
