const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const RockPaperScissors = buildModule("RockPaperScissors", (m) => {
    const game = m.contract("RockPaperScissors", []);
    return {
        game,
    };
});

module.exports = RockPaperScissors;