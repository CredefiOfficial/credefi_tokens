// SPDX-License-Identifier:MIT

pragma solidity 0.8.18;

import "./SafeMath.sol";
import "./ERC20.sol";
import "./Ownable.sol";


contract xCREDI is ERC20, Ownable{
    using SafeMath for uint256;

    constructor(uint256 initialSupply) ERC20("xCREDI", "xCREDI") {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 value) external onlyOwner returns (bool) {
        _mint(to, value);
        return true;
    }

    function burn(address to, uint256 value) external onlyOwner returns (bool) {
        _burn(to, value);
        return true;
    }
}
