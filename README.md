# 🪨 Rock Paper Scissors ✂️

A simple **rock-paper-scissors** game where you play against the computer.  
You can play anytime and test your luck or strategy!

---

**Rules**
The game automatically generates a move for the computer and determines the winner based on the rules:
Rock beats Scissors
Paper beats Rock
Scissors beats Paper

---

## 🚀 Contract Details

- **Contract Address on Sepolia**:
'0xaEC0A61DbEa0B04354465e835FD62Eca25e2A785'

---

## 📜 Basic Interaction Instructions

### 🔧 Interact Using CLI
Run the following command to open the Hardhat console:
```bash
npx hardhat console --network sepolia
```

---

**Simple Usage**

Call the play function with your chosen move:

1 for Rock

2 for Paper

3 for Scissors

**Note:** 
Ensure you send more than 0.001 ether when calling the function.
Make sure your wallet on Sepolia has enough Ether to cover the gas fees and game cost.

After playing, call the getResult function to see the result of your move.

---

## A simple example of how to interact with the network:

**To load the abi:**
```javascript
const abi = require('./artifacts/contracts/RockPaperScissors.sol/RockPaperScissors.json').abi;
```

**To call address:**
```javascript
const contractAddress = "0xaEC0A61DbEa0B04354465e835FD62Eca25e2A785";
```

**To get the signer:**
```javascript
signer = await ethers.provider.getSigner();
```

**To call the contract with signer:**
```javascript
game = new ethers.Contract(contractAddress, abi, signer);
```

**To create the move:**
```javascript
const playerMove = <yourNumber>; //1 for Rock, 2 for Papers, 3 for Scissors
```

**To call the game:**
```javascript
var play = await game.play(playerMove, {value: ethers.parseEther("0.02")});
```

**To call the result:**
```javascript
var result = await game.getResult();
```

**To return the result:**
```javascript
result
```
