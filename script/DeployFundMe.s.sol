// SPDX-License-Identifier: Apache
pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
contract DeployFundMe is Script {

function run( ) external returns (FundMe)  {
//Before start broadcast no gas tx
HelperConfig helperConfig = new HelperConfig();
address ethFeed = helperConfig.activeNetworkConfig();
    vm.startBroadcast();
//After start broadcast Real tx  -> gas tx
    FundMe fundMe = new FundMe(ethFeed);
    vm.stopBroadcast();
    return fundMe;

}

}
