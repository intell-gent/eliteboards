class JobsController < ApplicationController
  def show
  @job = Job.find(params[:id])
  @job
  end

  def create
    @board = Board.find(params[:id])
  end

  def new
    @job = Job.new(params[:job])

    if @job.save
      redirect "/boards/#{@job.board_id}"
    else
      erb :'jobs/new'
    end

  end

end
