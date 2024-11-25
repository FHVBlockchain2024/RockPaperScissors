#Rock Paper Scissors
It is a simple rock paper scissors game against the computer.
You can play, when ever you want.

#Contract Address on sepolia
'0xaEC0A61DbEa0B04354465e835FD62Eca25e2A785'

#Basic Interaction Instructions

Interact Using CLI:
npx hardhat console --network sepolia 

Call the play function with a move (1 for Rock, 2 for Paper, 3 for Scissors).
It needs more than 0.001 ether
To see the result call the getResult function

A simple example of how to interact with the network:

to load the abi:
const abi = require('./artifacts/contracts/RockPaperScissors.sol/RockPaperScissors.json').abi;
the address:
const contractAddress = "0xaEC0A61DbEa0B04354465e835FD62Eca25e2A785";
to get the signature
signer = await ethers.provider.getSigner();
to call the contract with the signature
game = new ethers.Contract(contractAddress, abi, signer);
to create the move
const playerMove = <yourNumber>; //1 for Rock, 2 for Papers, 3 for Scissors
to call the game:
var play = await game.play(playerMove, {value: ethers.parseEther("0.02")});
to call the result:
var result = await game.getResult();
to return the result:
result

