class GamesController < ApplicationController
  def new
    # @old_arry = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    # @letters = []
    #   @old_arry.map do |item|
    #     @letters << rand_letter = ('A'..'Z').to_a.sample
    #   end

    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @letters = params[:letters]
    @attempt = params[:attempt]
    # do letters exist in original Array

    # is it an english word?

  end

  def english_word?(word)
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    json['found']
  end
end

