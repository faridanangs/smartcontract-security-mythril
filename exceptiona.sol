// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;


contract Exceptions {
    uint256[8] myarray;
    uint counter = 0;
    function assert1() public pure {
        uint256 i = 1;
        assert(i == 0);
    }
    function counter_increase() public {
        counter += 1;
    }
    function assert5(uint input_x) public view {
        require(counter > 2);
        assert(input_x > 10);
    }
    function assert2() public pure {
        uint256 i = 1;
        assert(i > 0);
    }

    function assert3(uint256 input) public pure {
        assert(input != 23);
    }

    function require_is_fine(uint256 input) public pure {
        require(input != 23);
    }

    function this_is_fine(uint256 input) public pure {
        if (input > 0) {
            1 / input;
        }
    }

    function this_is_find_2(uint256 index) public view {
        if (index < 8) {
            myarray[index];
        }
    }
}


//// kode perintah untuk menjalankan tes ini
// docker run -v /d/programing/blockchain/mythril-tutorial:/mt mythril/myth analyze /mt/exceptiona.sol -t 1 -o json