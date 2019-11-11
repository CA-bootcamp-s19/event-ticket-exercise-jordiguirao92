pragma solidity ^0.5.0;

//import "truffle/Assert.sol";
//import "truffle/DeployedAddresses.sol";
import "../contracts/EventTickets.sol";
import "../contracts/EventTicketsV2.sol";

contract TestEventTicket {

string description = "description";
string website = "URL"; 
uint ticketNumbers = 100; 

//Tests of the contract EventTickets.sol
function testInitialConstructor() public {
 EventTickets eventTicket = new EventTickets(description, website, ticketNumbers);

 assert.equal(eventTicket.myEvent.description, description);
 assert.equal(eventTicket.myEvent.website, website);
 assert.equal(eventTicket.myEvent.totalTickets, ticketNumbers);
}



//Test of the contract EventTicketsV2.sol





}