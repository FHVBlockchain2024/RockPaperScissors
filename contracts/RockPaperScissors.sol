pragma solidity ^0.8.27;

contract RockPaperScissors {
    enum Move { None, Rock, Paper, Scissors }
    enum Result { None, Win, Lose, Draw }

    uint public playerScore;
    uint public computerScore;
    Result public result;
    Move public playerMove;
    Move public computerMove;

    constructor() {
        playerScore = 0;
        computerScore = 0;
    }

    function play(uint move) payable external {
        require(msg.value > 0.001 ether);
        playerMove = Move(move);
        require(playerMove != Move.None, "Invalid move");

        computerMove = generateComputerMove();
        result = determineResult(playerMove, computerMove);

        if (result == Result.Win) {
            playerScore++;
        } else if (result == Result.Lose) {
            computerScore++;
        }

    }

    function getResult() public view returns (string memory p, uint player, string memory c, uint computer, string memory compMove) {
        return ("Player: ", playerScore, "Computer: ", computerScore, moveToString(computerMove));
    }

    function moveToString(Move _move) private pure returns (string memory) {
        if (_move == Move.Rock) return "Rock";
        if (_move == Move.Paper) return "Paper";
        if (_move == Move.Scissors) return "Scissors";
        return "None";
    }

    function generateComputerMove() private view returns (Move) {
        uint random = uint(keccak256(abi.encodePacked(block.timestamp, block.prevrandao))) % 3 + 1;
        return Move(random);
    }

    function determineResult(Move _playerMove, Move _computerMove) private pure returns (Result) {
        if (_playerMove == _computerMove) return Result.Draw;

        if (
            (_playerMove == Move.Rock && _computerMove == Move.Scissors) ||
            (_playerMove == Move.Paper && _computerMove == Move.Rock) ||
            (_playerMove == Move.Scissors && _computerMove == Move.Paper)
        ) {
            return Result.Win;
        }

        return Result.Lose;
    }
}
