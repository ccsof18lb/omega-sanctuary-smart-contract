// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// no protagonist, at least no defined ones ...

contract OmegaSanctuaryV1 {
    // Begin For Characters
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
        uint256 currentLadder; // max 5
        Armory armory;
    }

    struct Weapon {
        bool isCommon; // true: 0; false: +1
        address nftWeapon;
        uint256 addAttack;
        uint256 addDefense;
        uint256 addRecovery;
        uint256 rarityRanking; // max 7
    }

    struct Armory {
        uint256 maxItem;
        Weapon[] weapons;
    }

    struct CharacterType { // CAN MIX AT MOST THREE
        bool wind;
        bool fire;
        bool water;
        bool soil;
        bool air;
    }
    // End For Characters

    // Begin For Users
    struct User {
        uint256 userId;
        address userAddress;
        string userName;
        string intro;
        uint256 victory;
        uint256 defeat;
        uint256 totalCharacters;
        uint256 characterLimit;
        uint256 followers;
    }
    // End For Users

    // Begin For Game Scenes
    struct Orientation { //ONLY ONE TRUE
        // static scene
        bool center; 
        bool east;
        bool west;
        bool north;
        bool south;
        bool outside;
    }

    struct Level { // ONLY ONE TRUE
        bool low;
        bool medium;
        bool high;
        bool extra;
    }

    struct NPCOpponents {
        uint256 index;
        address nftAsNPC;
        uint256 hp;
        uint256 defense;
        uint256 attack;
        uint256 level; // big boss: level 12
    }

    struct Mission {
        uint256 missionId;
    }

    struct Territory {
        Orientation orientation;
        Level difficulty;
    }
    // End For Game Scenes
}