// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./LibAppStorage.sol";

contract LeaderboardFacet {
    event ScoreUpdated(address indexed player, uint256 newScore);

    /**
     * @dev Updates a player's score. Part of the modular Diamond logic.
     */
    function updateScore(uint256 _newScore) external {
        AppStorage storage s = LibAppStorage.diamondStorage();
        
        s.players[msg.sender].score = _newScore;
        s.players[msg.sender].lastUpdated = block.timestamp;

        _updateTopRankings(msg.sender, _newScore);
        emit ScoreUpdated(msg.sender, _newScore);
    }

    function _updateTopRankings(address _player, uint256 _score) internal {
        // Logic to maintain top 10/100 list goes here
    }

    function getPlayerScore(address _player) external view returns (uint256) {
        return LibAppStorage.diamondStorage().players[_player].score;
    }
}
