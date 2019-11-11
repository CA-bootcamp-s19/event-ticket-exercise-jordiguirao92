pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EventTickets.sol";
import "../contracts/EventTicketsV2.sol";

contract TestEventTicket {

function () external payable {}

//Tests of the contract EventTickets.sol
function testInitialConstructorIsOpen() public {
 EventTickets eventTicket = new EventTickets("new web", "URL", 100);
 (,,,,bool isOpen) = eventTicket.readEvent();
 Assert.isTrue(isOpen, "when the contract is created sale is open");
}

function testInitialConstructorWebsite() public {
 EventTickets eventTicket = new EventTickets("new web", "URL", 100);
 (,string memory website,,,) = eventTicket.readEvent();
 Assert.equal(website, "URL", "The website has to be the same");
}

}