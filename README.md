# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```

to play with the game you have to copy the following:

npx hardhat console --network sepolia 

const abi = require('./artifacts/contracts/RockPaperScissors.sol/RockPaperScissors.json').abi;
const contractAddress = "0xaEC0A61DbEa0B04354465e835FD62Eca25e2A785";
signer = await ethers.provider.getSigner();
game = new ethers.Contract(contractAddress, abi, signer);
const playerMove = <yourNumber>; //1 for Rock, 2 for Papers, 3 for Scissors
var play = await game.play(playerMove, {value: ethers.parseEther("0.02")});
var result = await game.getResult();
result

