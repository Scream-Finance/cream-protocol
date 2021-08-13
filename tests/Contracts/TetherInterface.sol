pragma solidity ^0.5.16;

import "../../contracts/BEP20Interface.sol";

contract TetherInterface is BEP20Interface {
    function setParams(uint256 newBasisPoints, uint256 newMaxFee) external;
}
