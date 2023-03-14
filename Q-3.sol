pragma solidity ^0.8.0;

contract EvenOdd {
    function isEven(uint256 num) public pure returns (bool) {
        if (num % 2 == 0) {
            return true; 
        } else {
            return false;  
        }
    }
}
