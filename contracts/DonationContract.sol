//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract DonationContract {
    uint256 public totalOrg = 0;

    struct Org{
        uint256 id;
        string hash;
        string description;
        uint256 donationAmount;
        address payable author;
    }



}