// Contract based on https://docs.openzeppelin.com/contracts/4.x/erc1155
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "../node_modules/@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract CoinNft is ERC1155 {
    constructor()
        ERC1155(
            "https://raw.githubusercontent.com/noopmood/TutorialNFTInGo/main/metadata/{id}.json"
        )
    {}

    function mintCaller(uint256 tokenId, uint256 amount) public {
        _mint(msg.sender, tokenId, amount, "");
    }

    function mintAddress(
        uint256 tokenId,
        uint256 amount,
        address addr
    ) public {
        _mint(addr, tokenId, amount, "");
    }
}
