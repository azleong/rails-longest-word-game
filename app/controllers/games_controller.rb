class GamesController < ApplicationController

def new
   @letters = Array.new(9) { ('A'..'Z').to_a.sample }
end
  
def score
    @word = params[:word]
    @letters = params[:letters]
    if included?(@word, @letters)
      [score, "well done"]
  else
    	[0, "not in the grid"]
  end
end

def included?(guess, grid)
    guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) } 
end
	
end