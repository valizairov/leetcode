/*
 999. Available Captures for Rook - Easy

 On an 8 x 8 chessboard, there is exactly one white rook 'R' and some number of white bishops 'B', black pawns 'p', and empty squares '.'.

 When the rook moves, it chooses one of four cardinal directions (north, east, south, or west), then moves in that direction until it chooses to stop, reaches the edge of the board, captures a black pawn, or is blocked by a white bishop. A rook is considered attacking a pawn if the rook can capture the pawn on the rook's turn. The number of available captures for the white rook is the number of pawns that the rook is attacking.

 Return the number of available captures for the white rook.

 Example 1:
 Input: board = [
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".","R",".",".",".","p"],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 3
 Explanation: In this example, the rook is attacking all the pawns.
 
 Example 2:
 Input: board = [
 [".",".",".",".",".",".",".","."],
 [".","p","p","p","p","p",".","."],
 [".","p","p","B","p","p",".","."],
 [".","p","B","R","B","p",".","."],
 [".","p","p","B","p","p",".","."],
 [".","p","p","p","p","p",".","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 0
 Explanation: The bishops are blocking the rook from attacking any of the pawns.
 
 Example 3:
 Input: board = [
 [".",".",".",".",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 ["p","p",".","R",".","p","B","."],
 [".",".",".",".",".",".",".","."],
 [".",".",".","B",".",".",".","."],
 [".",".",".","p",".",".",".","."],
 [".",".",".",".",".",".",".","."]]
 Output: 3
 Explanation: The rook is attacking the pawns at positions b5, d6, and f5.
 */

class Solution {
    func numRookCaptures(_ board: [[Character]]) -> Int {
        var x=0, y = 0
        let len = 8
        var rooksRow = [Character]()
        var rooksColumn = [Character]()
        
        func findRookPosition() {
            for (i, arr) in board.enumerated() {
                for (j, cha) in arr.enumerated() {
                    if cha == "R" {
                        rooksRow = arr // remember row
                        x = j
                        y = i
                    }
                }
            }
            //remember the column
            for (_, arr) in board.enumerated() {
                for (j, cha) in arr.enumerated() {
                    if j == x {
                        rooksColumn.append(cha)
                    }
                }
            }
        }
        func canEatPawn(_ array: [Character]) -> Int {
            print(array)
            for (i, cha) in array.enumerated() {
                print(cha, i, x)
                if i >= x { // look at values after the rook position
                    if cha == "B" {
                        print("B!")
                        return 0
                    } else if cha == "p" {
                        print("P!!!")
                        return 1
                    }
                }
            }
            return 0
        }
        func rookEatsLeft() -> Int {
            return canEatPawn(rooksRow.reversed())
        }

        func rookEatsRight() -> Int {
            return canEatPawn(rooksRow)
        }
        func rookEatsUp() ->Int {
            return canEatPawn(rooksColumn.reversed())
        }
        func rookEatsDown() -> Int {
            return canEatPawn(rooksColumn)
        }
        
        findRookPosition()
        return rookEatsUp() + rookEatsDown() + rookEatsLeft() + rookEatsRight()
    }
}
//
//let board1: [[Character]] = [
//[".",".",".",".",".",".",".","."],
//[".",".",".","p",".",".",".","."],
//[".",".",".","R",".",".",".","p"],
//[".",".",".",".",".",".",".","."],
//[".",".",".",".",".",".",".","."],
//[".",".",".","p",".",".",".","."],
//[".",".",".",".",".",".",".","."],
//[".",".",".",".",".",".",".","."]]
//Solution().numRookCaptures(board1) //3
//
//let board2: [[Character]] = [
//[".",".",".",".",".",".",".","."],
//[".","p","p","p","p","p",".","."],
//[".","p","p","B","p","p",".","."],
//[".","p","B","R","B","p",".","."],
//[".","p","p","B","p","p",".","."],
//[".","p","p","p","p","p",".","."],
//[".",".",".",".",".",".",".","."],
//[".",".",".",".",".",".",".","."]]
//
//Solution().numRookCaptures(board2) //0
//
//let board3: [[Character]] = [
//[".",".",".",".",".",".",".","."],
//[".",".",".","p",".",".",".","."],
//[".",".",".","p",".",".",".","."],
//["p","p",".","R",".","p","B","."],
//[".",".",".",".",".",".",".","."],
//[".",".",".","B",".",".",".","."],
//[".",".",".","p",".",".",".","."],
//[".",".",".",".",".",".",".","."]]
//
//Solution().numRookCaptures(board3) //3
/*
let board4: [[Character]] = [
[".",".",".",".",".",".",".","."],
[".",".","B","B","B","B","B","."],
[".","p","B","p","p","p","B","p"],
[".","p","B","p","R","p","B","p"],
[".","p","B","p","p","p","B","p"],
[".",".","B","B","B","B","B","."],
[".",".",".","p","p","p",".","."],
[".",".",".",".",".",".",".","."]]

Solution().numRookCaptures(board4) //4
*/

let board5: [[Character]] = [
    [".",".",".",".",".",".",".","."],
    [".",".",".","p",".",".",".","."],
    [".",".",".","B",".",".",".","."],
    [".","p","B","R","p","B","p","."],
    [".",".",".","p","p",".",".","."],
    [".",".",".","B",".",".",".","."],
    [".",".",".","p",".",".",".","."],
    [".",".",".",".",".",".",".","."]
]
Solution().numRookCaptures(board5) //2
