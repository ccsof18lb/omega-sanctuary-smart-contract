// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract OmegaSanctuaryV1 {
    struct Character {
        uint256 userId;
        address characterAddress;
        uint256 characterUniqueId;
        uint256 experienceInMega;
        CharacterType characterType;
        uint256 hp;
        uint256 defense;
        uint256 attack;
        uint256 level;
        uint256 maxLevel;
        uint256 currentStage;
    }

    struct CharacterType { // AMT1
        bool wind; // 1
        bool fire; // 2
        bool water; // 3
        bool soil; // 0
        bool air; // 4
    }

    struct User {
        uint256 userId;
        address userAddress;
        string userName;
        string intro;
        uint256 victory;
        uint256 defeat;
        uint256 totalCharacters;
        uint256 characterLimit; // $ 
        uint256 followers; // $
    }

    struct Orientation { //ONLY ONE TRUE
        bool center; // static scene
        bool east;
        bool west;
        bool north;
        bool south;
        bool outside;
    }

    struct Level { // OOT
        bool low;
        bool medium;
        bool high;
    }

    struct NPCOpponents {
        uint256 index;
        address nftAsNPC;
    }

    struct Territory {
        Orientation orientation;
        Level difficulty;
    }
}