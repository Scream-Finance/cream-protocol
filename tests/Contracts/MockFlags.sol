pragma solidity ^0.5.16;

contract MockFlags {
    bool private flag;

    function getFlag(address) external view returns (bool) {
        return flag;
    }

    function setFlag(bool _flag) external {
        flag = _flag;
    }
}
