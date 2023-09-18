// Deploy mock contracts when we're on local chainds
// Keep track of different contract address across different chains
 // SPDX-License-Identifier: MIT 
 pragma solidity ^0.8.18; 
 
 import {Script} from "forg3e-std/Script.sol";
//  import {FundMe} from "../src/FundMe.sol";
 
 contract HelperConfig  {


    struct NetworkConfig{

        address priceFeed;
    }  

NetworkConfig public activeNetworkConfig;

  constructor() {
    if(block.chainid == 80001) {
activeNetworkConfig = getNetWorkFeedAddress();
    }else{
        activeNetworkConfig = getAnvilNetwork();
    }
  }


    function getNetWorkFeedAddress() public pure returns (NetworkConfig memory){
            NetworkConfig memory sepoConfig = NetworkConfig({priceFeed:0x694AA1769357215DE4FAC081bf1f309aDC325306});
            return sepoConfig;
    }
    function getAnvilNetwork() public pure returns(NetworkConfig memory){
        // Returns anvil config
    }

} 
