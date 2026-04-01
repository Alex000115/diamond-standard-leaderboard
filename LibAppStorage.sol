// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

struct Player {
    uint256 score;
    uint256 lastUpdated;
    string username;
}

struct AppStorage {
    mapping(address => Player) players;
    address[] topPlayers;
    uint256 competitionId;
}

library LibAppStorage {
    function diamondStorage() internal pure returns (AppStorage storage ds) {
        assembly {
            ds.slot := 0
        }
    }
}
