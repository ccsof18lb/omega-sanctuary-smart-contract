// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// no protagonist, at least no defined ones ...
// move too fast sync too slow

contract OmegaSanctuaryV1 {
    // Begin For Characters
    struct Character {
        uint256 userId;
        address characterAddress;
        uint256 experienceInMega;
        CharacterType characterType;
        uint256 hp;
        uint256 defense;
        uint256 attack;
        uint256 level;
        uint256 maxLevel;
        uint256 currentLadder; // max 5
        Armory armory;
        SpecialEffect[] specialEffects;
    }

    struct SpecialEffect {
        string effect; // must fit the defined strings
        int256 upOrdown;
    }

    struct Weapon {
        bool isCommon; // true: 0; false: n < 8
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
        string elementalType; // wind air fire water soil
        // mix with ;
    }
    // End For Characters

    // Begin For Users
    struct User {
        uint256 userId;
        address userAddress;
        string userName;
        string intro;
        Character[] characters;
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
        string orientation; // center east west north south outside
    }

    struct Level { // ONLY ONE TRUE
        string difficulty; // low high medium extra
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
