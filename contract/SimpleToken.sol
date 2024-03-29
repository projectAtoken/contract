
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";
import "./ERC20Burnable.sol";


/**
* @title SimpleToken
* @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
* Note they can later distribute these tokens as they wish using `transfer` and other
* `ERC20` functions.
*/
contract SimpleToken is ERC20, ERC20Detailed, ERC20Burnable {


uint8 public constant DECIMALS = 18;
uint256 public constant INITIAL_SUPPLY = 10000000000 * (10 ** uint256(DECIMALS));


constructor () public ERC20Detailed("jeju", "test", DECIMALS) {
    _mint(msg.sender, INITIAL_SUPPLY);
}
}
