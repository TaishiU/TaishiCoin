pragma solidity ^0.5.16;

import "github.com/shunsukehondo/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract TaishiCoin is ERC20 {
    string public name = "TaishiCoin"; //トークン名
    string public symbol = "TAI"; //通貨単位
    uint8 public decimals = 18; //小数点移動の数
    uint256 public initialSupply = 10000 * (10 ** uint256(decimals)); //初期発行量
    
    constructor() public {
        _mint(msg.sender, initialSupply); //初めは発行者に全て振り込む
    }
    
}