// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MyToken is ERC1155 {
    uint256 public constant PHENZIC000 = 0;
    uint256 public constant PHENZIC001 = 1;

    constructor()
        ERC1155(
            "https://bafybeiaqqz4unoubpu2oz2rsgowh3irdqnpcqjoyspzwrepnrwql7rgvy4.ipfs.nftstorage.link/"
        )
    {
        _mint(msg.sender, PHENZIC000, 200, "");
        _mint(msg.sender, PHENZIC001, 100, "");
    }

    function uri(
        uint256 _tokenId
    ) public pure override returns (string memory) {
        return
            string(
                abi.encodePacked(
                    "https://bafybeiaqqz4unoubpu2oz2rsgowh3irdqnpcqjoyspzwrepnrwql7rgvy4.ipfs.nftstorage.link/PHENZIC00",
                    Strings.toString(_tokenId),
                    ".jpeg"
                )
            );
    }
}
