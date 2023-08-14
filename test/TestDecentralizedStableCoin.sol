// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {DecentralizedStableCoin} from "../src/DecentralizedStableCoin.sol";
import {DeployDecentralizedStableCoin} from "../script/DeployDecentralizedStableCoin.s.sol";

contract DecentralizedStableCoinTest is Test {
    DeployDecentralizedStableCoin public deployDecentralizedStableCoin;
    DecentralizedStableCoin public decentralizedStableCoin;

    address public constant USER = address(1);
    uint256 public constant SEND_VALUE = 0.1 ether;
    uint256 public constant STARTING_USER_BALANCE = 10 ether;

    function setUp() public {
        deployDecentralizedStableCoin = new DeployDecentralizedStableCoin();
        decentralizedStableCoin = deployDecentralizedStableCoin.run();
    }

    function testBurnMustBeMoreThanZero() public {
        hoax(USER, STARTING_USER_BALANCE);
        // vm.prank(USER);
        //vm.expectRevert();
        decentralizedStableCoin.burn(SEND_VALUE);
    }
}
