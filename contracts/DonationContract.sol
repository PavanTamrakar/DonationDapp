//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract DonationContract {
    uint256 public totalOrg = 0;

    struct Org{
        uint256 id;
        string hash;
        string description;
        uint256 donationAmount;
        address author;
    }

    mapping(uint256 => Org) public orgs;

    event orgCreated(
        uint256 id,
        string hash,
        string description,
        uint256 donationAmount,
        address payable author
    );

    event orgDonated(
        uint256 id,
        string hash,
        string description,
        uint256 donationAmount,
        address payable author
    );

    function uploadOrg(string memory _orgHash, string memory _description) public payable {
        require(bytes(_orgHash).length > 0);
        require(bytes(_description).length > 0);
        require(msg.sender != address(0x0));
        totalOrg++;
        orgs[totalOrg] = Org(
            totalOrg,
            _orgHash,
            _description,
            0,
            msg.sender
        );
        emit orgCreated(totalOrg, _orgHash, _description, 0, msg.sender);
    }


    
}