## Merkle Trees

### What are Merkle Trees?

Merkle trees, also known as hash trees, are a fundamental data structure in cryptography and distributed systems. They provide a way to efficiently and securely verify the integrity of data within a large dataset without having to store or transfer the entire dataset.

Let's break down the key components:

- **Data Integrity:** Merkle trees help to ensure that data has not been altered or corrupted, intentionally or unintentionally.
- **Efficiency:** Verifying a small piece of data within a large dataset can be done without the need to examine the entire dataset.
- **Security:** Cryptographic hash functions are used, making it computationally infeasible to tamper with the data without being detected.

### Core Concepts

1. **Hashing**

   - A hash function (i.e., SHA-256, keccak256) takes an arbitrary amount of input data and produces a fixed-size output called a hash. We will delve into detail in the next section.

2. **Merkle Tree Structure**

   - **Leaves:** The bottom layer of a Merkle tree consists of the hashes of individual data elements (e.g., transactions).
   - **Internal Nodes:** Each internal (non-leaf) node is the hash of its two children (the nodes below it).
   - **Top Node:** The single hash at the top is the top hash, representing the entire dataset.

### How Merkle Trees Work

1. **Construction:**

   - Each piece of data in the dataset is hashed, forming the leaf nodes.
   - Pairs of leaf hashes are concatenated and hashed again to form the parent nodes.
   - This process repeats recursively until a single top hash remains.

2. **Verification**
   - To prove a piece of data is part of the tree, a Merkle proof is provided. This proof consists of the hashes of sibling nodes along the path from the targeted data's leaf node to the top.
   - By re-hashing along the path using the proof, one can recalculate the top hash and compare it with the known top hash. If they match, the data is verified as authentic.

### Benefits

- **Efficient Data Verification:** Instead of comparing against the entire dataset, only a small Merkle proof is needed to verify a piece of data.
- **Tamper Evidence:** Modifying even a small part of the dataset results in a different top hash, making alterations detectable.
- **Space Efficient:** The size of Merkle proofs grows logarithmically with the size of the dataset.

### Why Use Merkle Trees?

Merkle trees provide an efficient way to verify the integrity of large datasets. Instead of comparing entire datasets, you only need to compare the top hash to ensure data integrity. This is particularly useful in distributed systems like blockchains.

## Merkle Proofs

### What are Merkle Proofs?

A Merkle proof is a compact way to prove that a specific piece of data (usually a transaction in a blockchain) is included in a Merkle tree without revealing the entire tree. It consists of a set of cryptographic hashes that connect the data to the top of the tree.

### How Do They Work?

1. **Start with Data**: Let's say we have a set of data blocks, each hashed individually.
2. **Collect Sibling Hashes**: To prove the inclusion of a specific data block, collect the sibling hashes encountered while traversing the tree from the leaf (data block) to the top.
3. **Combine Hashes**: Use these sibling hashes along with the target data block to reconstruct the top hash.
4. **Verify Top Hash**: Compare the reconstructed top hash with the known top hash. If they match, the data is verified.

### Example:

Visualized, this structure resembles a tree. In the diagram below, "T" designates a transaction, "H" a hash. Note that the image is highly simplified; an average block contains over 500 transactions, not eight

![alt text](/merkle-tree/images/image.png)

In the image, each leaf node (the bottom row) represents a block of data. Each internal node is a hash of its two children nodes. The hash function takes data as input and creates a unique output string of a fixed length. So, the value in each internal node is the result of hashing the data in its two children nodes. The root node, located at the top, is the hash of all the data blocks in the tree.

Merkle proofs are used to verify that a particular block of data is part of a larger data set without needing to download the entire dataset. For example, if someone wants to verify that a particular transaction is included in a blockchain, they can request a Merkle proof from a node on the network. The Merkle proof will include the hash of the block containing the transaction. The verifier can then calculate the hash of the block containing the transaction and compare it to the hash in the proof. If the hashes match, then the verifier can be sure that the transaction is part of the blockchain.

For example, say that you wanted to verify that transaction TD is included in the block in the diagram above. If you have the root hash (HABCDEFGH), the process is like a game of sudoku: you query the network about HD, and it returns HC, HAB, and HEFGH. The Merkle tree allows you to verify that everything is accounted for with three hashes: given HAB, HC, HEFGH, and the root HABCDEFGH, HD (the only missing hash) has to be present in the data.

![alt text](/merkle-tree/images/image1.png)

### Additional Notable References:

Investopedia article explaining Merkle trees in blockchain. [Merkle Tree in Blockchain](https://www.investopedia.com/terms/m/merkle-tree.asp)

YouTube video explaining Merkle trees in blockchain. [Merkle Tree| Merkle Root](https://www.youtube.com/watch?v=fB41w3JcR7U)
