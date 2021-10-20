pragma solidity ^0.5.16;

import "../../contracts/PriceOracle/PriceOracleProxy.sol";

contract PriceOracleProxyHarness is PriceOracleProxy {
    uint256 public blockTimestamp = 100000;

    constructor(
        address admin_,
        address v1PriceOracle_,
        address cEthAddress_,
        address registry_
    ) public PriceOracleProxy(admin_, v1PriceOracle_, cEthAddress_, registry_) {}

    function getBlockTimestamp() internal view returns (uint256) {
        return blockTimestamp;
    }

    function setBlockTimestamp(uint256 newBlockTimestamp) public {
        blockTimestamp = newBlockTimestamp;
    }
}
