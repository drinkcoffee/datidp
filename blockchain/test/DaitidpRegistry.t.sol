// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DaitidpRegistry} from "../src/DaitidpRegistry.sol";

contract DaitidpRegistryTest is Test {
    DaitidpRegistry public registry;

    function setUp() public {
        registry = new DaitidpRegistry();
    }

    function test_Register() public {
        address alice = address(0x1);
        registry.register(alice);
        assertTrue(registry.isRegistered(alice));
        assertEq(registry.totalRegistered(), 1);
    }

    function test_Unregister() public {
        address alice = address(0x1);
        registry.register(alice);
        registry.unregister(alice);
        assertFalse(registry.isRegistered(alice));
        assertEq(registry.totalRegistered(), 0);
    }

    function testFuzz_Register(address account) public {
        vm.assume(account != address(0));
        registry.register(account);
        assertTrue(registry.isRegistered(account));
        assertEq(registry.totalRegistered(), 1);
    }
}
