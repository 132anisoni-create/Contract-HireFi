# 💼 HireFi – On-Chain Applicant & Employee Registry

## 📖 ![Uploading Screenshot (2).png…]()

Project Description
**HireFi** is a beginner-friendly **Solidity smart contract** that allows organizations to manage applicants and employees **directly on the blockchain**.  
It demonstrates how decentralized applications (dApps) can bring **transparency**, **security**, and **immutability** to hiring and HR management processes.

This project is perfect for those who are **new to blockchain development** and want to understand how to build, deploy, and interact with a smart contract using **Remix IDE** and **MetaMask**.

---

## ⚙️ What It Does
- 📋 **Applicants** can register themselves on-chain by submitting their personal and professional details.  
- 👔 **Admins (contract owners)** can review registered applicants and **hire them** into the employee list.  
- ❌ **Admins can remove employees** from the registry when necessary.  
- 🔍 Anyone can view applicant or employee details using read-only functions.  
- ⚡ Every important action (register, hire, remove) emits an **event**, keeping the blockchain record transparent.  

---

## ✨ Features
✅ On-chain applicant registration  
✅ Admin-controlled hiring and removal  
✅ Publicly viewable applicant and employee data  
✅ Transparent event logging for every key action  
✅ Simple, secure, and gas-efficient Solidity design  

---

## 🔗 Deployed Smart Contract
HireFi.sol
//paste your code

---

## 🧠 Learning Objectives
By building and exploring **HireFi**, you will learn:
- How to write a **Solidity smart contract**  
- How to use **structs**, **mappings**, and **events**  
- How to apply **access control** using modifiers  
- How to deploy contracts to Ethereum testnets  
- How to test functions using **Remix IDE**  

---

## 🧩 How to Use (via Remix IDE)
1. Go to [Remix IDE](https://remix.ethereum.org/).  
2. Create a new file named `HireFi.sol`.  
3. Paste the Solidity code below.  
4. Compile with Solidity **version 0.8.20** or later.  
5. Deploy using **Injected Provider (MetaMask)**.  
6. Test the contract by:
   - Registering as an applicant (`registerApplicant`)  
   - Hiring applicants (`hireApplicant`) — admin only  
   - Removing employees (`removeEmployee`) — admin only  
   - Viewing applicants or employees (`getApplicant`, `getEmployee`)  

---

## 💻 Smart Contract Code

```solidity
//paste your code
