// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {DaitidpRegistry} from "../src/DaitidpRegistry.sol";

contract DaitidpRegistryScript is Script {
    DaitidpRegistry public registry;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        registry = new DaitidpRegistry();

        vm.stopBroadcast();
    }
}
