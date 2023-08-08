// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {DecentralizedStableCoin} from "../src/DecentralizedStableCoin.sol";
import {DeployDecentralizedStableCoin} from "../script/DeployDecentralizedStableCoin.s.sol";

contract DecentralizedStableCoinTest is Test {
    DeployDecentralizedStableCoin public deployDecentralizedStableCoin;
    DecentralizedStableCoin public decentralizedStableCoin;

    function setUp() public {
        deployDecentralizedStableCoin = new DeployDecentralizedStableCoin();
        decentralizedStableCoin = deployDecentralizedStableCoin.run();
    }

    function testBurnMustBeMoreThanZero() public {
        vm.expectRevert();
        decentralizedStableCoin.burn(0);
    }
}
