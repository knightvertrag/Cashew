//SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

contract cashewnut_ico {
    // Initialize trade variables
    uint256 public max_nuts = 10000000;
    uint256 public usd_to_nuts = 1000;
    uint256 public total_nuts_bought = 0;

    // Mapping from investor address to its equity in nuts and USD
    mapping(address => uint256) equity_nuts;
    mapping(address => uint256) equity_usd;

    // Checking if investor has nuts
    modifier can_buy_nuts(uint256 usd_invested) {
        require(
            usd_invested * usd_to_nuts + total_nuts_bought <= max_nuts,
            "NOT ENOUGH NUTS"
        );
        _;
    }

    // //Get equity in nuts of investor
    // function equity_in_nuts(address investor) external view returns (uint256) {
    //     return equity_nuts[investor];
    // }

    // //Get equity in USD of investor
    // function equity_in_usd(address investor) external view returns (uint256) {
    //     return equity_usd[investor];
    // }
}