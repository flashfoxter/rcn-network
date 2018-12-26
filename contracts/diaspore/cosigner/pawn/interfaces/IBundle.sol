pragma solidity ^0.5.0;

import "./../../../../interfaces/IERC721Base.sol";


interface IBundle {
    function canDeposit(uint256 packageId) external view returns (bool);
    function content(uint256 id) external view returns (address[] tokens, uint256[] ids);

    function create() external returns (uint256 id);
    function deposit(uint256 _packageId, IERC721Base token, uint256 tokenId) external returns (bool);
    function depositBatch(uint256 _packageId, IERC721Base[] tokens, uint256[] ids) external returns (bool);
    function withdraw(uint256 packageId, IERC721Base token, uint256 tokenId, address to) external returns (bool);
    function withdrawBatch(uint256 packageId, IERC721Base[] tokens, uint256[] ids, address to) external returns (bool);
    function withdrawAll(uint256 packageId, address to) external returns (bool);
}