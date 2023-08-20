// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

/*
 * @title DSCEngine
 * @author Ed Marcavage thanks to Patrick Collins
 *
 * The system is designed to be as minimal as possible, and have the tokens maintain a 1 token == $1 peg at all times.
 * This is a stablecoin with the properties:
 * - Exogenously Collateralized
 * - Dollar Pegged
 * - Algorithmically Stable
 *
 * It is similar to DAI if DAI had no governance, no fees, and was backed by only WETH and WBTC.
 *
 * @notice This contract is the core of the Decentralized Stablecoin system. It handles all the logic
 * for minting and redeeming DSC, as well as depositing and withdrawing collateral.
 * @notice This contract is based on the MakerDAO DSS system
 */
contract DSCEngine {
    //////////////
    // Errors
    //////////////

    error DSCEngine__NeedsMoreThanZero();

    ///////////////////
    // State Variables
    ///////////////////
    mapping(address collateralToken => address priceFeed) private s_priceFeeds;

    //////////////
    // Modifiers
    //////////////

    modifier moreThanZero(uint256 _amount) {
        if (_amount == 0) {
            revert DSCEngine__NeedsMoreThanZero();
        }
        _;
    }

    //////////////
    // Functions
    //////////////

    constructor(
        address[] memory tokenAddresses,
        address[] memory priceFeedAddresses
    ) {}

    // depositCollateralAndMintDsc
    function depositCollateralAndMintDsc() external {}

    /*
     * @notice This function allows a user to deposit collateral and mint DSC
     * @param tokenCollateralAddress The address of the collateral token
     * @param amountCollateral The amount of collateral to deposit
     **/
    function depositCollateral(
        address tokenCollateralAddress,
        uint256 amountCollateral
    ) external moreThanZero(amountCollateral) {}
    // redeemCollateralForDsc
    // redeemCollateral
    // burnDsc
    // liquidate
}
