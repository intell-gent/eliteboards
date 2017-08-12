class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @boards
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params[:board])

    if @board.save
      @board
    else
      erb :'boards/new'
    end
  end

  def show
    @board = Board.find(params[:id])
    @board
  end

end


