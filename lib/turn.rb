require_relative "../lib/turn"
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} " 
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} " 
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end

def input_to_index(num)
    num.to_i - 1
end

def move(board, index, input="X")
    board[index.to_i] = input
end

def valid_move?(board, index)
    if index.between?(0 , 8) && board[index] == " " then
        return true
    else 
        return false
    end
end

def move(board, index, token="X")    
    board[index] = token
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) then
        move(board, index)
        display_board(board)
    else
        turn(board)
    end     
end 


