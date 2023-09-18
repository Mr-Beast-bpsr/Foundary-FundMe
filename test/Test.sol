// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; 

import {Test,console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployMe} from   "../script/DeployFundMe.sol" ;
contract FundMeTest is Test {
 FundMe fundMe;
    uint256 constants =0;
    function setUp() external {
        DeployMe deployFundMe = new DeployMe();
        fundMe = deployFundMe.run();
        constants = 9;
        console.log(9);
    }
    function testDemo(uint256 a) public{
       
        console.log(a);
        constants +a;
        console.log(a);
    }
}