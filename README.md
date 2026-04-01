# On-Chain Gaming Leaderboard (EIP-2535)

A professional-grade, future-proof gaming primitive. This repository uses the "Diamond Standard" to overcome the 24KB smart contract size limit. By using a Proxy (Diamond) and functional logic modules (Facets), developers can add new game features, reward logic, and leaderboard categories indefinitely.

## Core Features
* **Modular Upgradability:** Add or replace specific game logic without redeploying the entire system.
* **Storage Diamonds:** Uses "AppStorage" or "DiamondStorage" patterns to prevent state collision between facets.
* **Gas Efficiency:** Optimized for high-frequency score updates and global ranking queries.
* **Flat Structure:** Organized by Facets (Logic) and the Diamond (Proxy) in a streamlined layout.

## Logic Flow
1. **Diamond:** The main entry point that delegates calls to specific facets.
2. **ScoreFacet:** Handles player score submissions and validation.
3. **RankingFacet:** Manages the sorted list of top players for global visibility.
4. **AdminFacet:** Allows the game developer to add new modules or upgrade existing ones.

## Setup
1. `npm install`
2. Deploy the `Diamond.sol` and the `LeaderboardFacet.sol`.
