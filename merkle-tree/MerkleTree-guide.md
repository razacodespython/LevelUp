## Merkle Trees

### What is a Merkle Tree?

Think of a Merkle tree as a way to represent data in a hierarchical structure using cryptographic hashes. At the top of the tree is a single hash called the root hash. This root hash is derived from combining hashes of lower-level data.

### How Does it Work?

1. **Data Hashing**: Start with your data blocks. Each block is hashed individually.
2. **Pairwise Hashing**: These hashed blocks are then paired up and hashed together, forming a new level in the tree.
3. **Repeating Process**: Continue this process, pairing and hashing, until you have a single root hash.

### Why Use Merkle Trees?

Merkle trees provide an efficient way to verify the integrity of large datasets. Instead of comparing entire datasets, you only need to compare the root hash to ensure data integrity. This is particularly useful in distributed systems like blockchains.

## Merkle Proofs

### What are Merkle Proofs?

A Merkle proof is a compact way to prove that a specific piece of data (usually a transaction in a blockchain) is included in a Merkle tree without revealing the entire tree. It consists of a set of cryptographic hashes that connect the data to the root hash of the tree.

### How Do They Work?

1. **Start with Data**: Let's say we have a set of data blocks, each hashed individually.
2. **Collect Sibling Hashes**: To prove the inclusion of a specific data block, collect the sibling hashes encountered while traversing the tree from the leaf (data block) to the root.
3. **Combine Hashes**: Use these sibling hashes along with the target data block to reconstruct the root hash.
4. **Verify Root Hash**: Compare the reconstructed root hash with the known root hash. If they match, the data is verified.

### Example:

1
Visualized, this structure resembles a tree. In the diagram below, "T" designates a transaction, "H" a hash. Note that the image is highly simplified; an average block contains over 500 transactions, not eight

![alt text](/merkle-tree/images/image.png)

In the image, each leaf node (the bottom row) represents a block of data. Each internal node is a hash of its two children nodes. The hash function takes data as input and creates a unique output string of a fixed length. So, the value in each internal node is the result of hashing the data in its two children nodes. The root node, located at the top, is the hash of all the data blocks in the tree.

Merkle proofs are used to verify that a particular block of data is part of a larger data set without needing to download the entire dataset. For example, if someone wants to verify that a particular transaction is included in a blockchain, they can request a Merkle proof from a node on the network. The Merkle proof will include the hash of the block containing the transaction. The verifier can then calculate the hash of the block containing the transaction and compare it to the hash in the proof. If the hashes match, then the verifier can be sure that the transaction is part of the blockchain.

For example, say that you wanted to verify that transaction TD is included in the block in the diagram above. If you have the root hash (HABCDEFGH), the process is like a game of sudoku: you query the network about HD, and it returns HC, HAB, and HEFGH. The Merkle tree allows you to verify that everything is accounted for with three hashes: given HAB, HC, HEFGH, and the root HABCDEFGH, HD (the only missing hash) has to be present in the data.

![alt text](/merkle-tree/images/image1.png)

### Additional Notable References:

Investopedia article explaining Merkle trees in blockchain. [Merkle Tree in Blockchain](https://www.investopedia.com/terms/m/merkle-tree.asp)

YouTube video explaining Merkle trees in blockchain. [Merkle Tree| Merkle Root](https://www.youtube.com/watch?v=fB41w3JcR7U)
