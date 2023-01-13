pragma solidity 0.8.7;


// abi.encode encodes data into bytes.
// abi.decode decodes bytes back into data.


contract EncodeDecode{

    function encode(uint x,address addr) external pure returns (bytes memory) {
        return abi.encode(x, addr);
    }

    function decode(bytes calldata data) external pure returns (uint n, address adr)
    {
       (n,adr) =abi.decode(data,(uint,address));
    }


    function hash(
        uint num,
        address addr
    ) public pure returns (bytes32) {
        return keccak256(abi.encode(num, addr));
    }

    function verifyHash(
        uint num,
        address addr,
        bytes32  _hash
    ) public pure returns (bool) {
        return keccak256(abi.encode(num, addr)) == _hash;
    }




}