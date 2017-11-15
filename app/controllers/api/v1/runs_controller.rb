class Api::V1::RunsController < ApplicationController

  skip_before_action :authorized

  def index
    @runs = Run.all
    render json: @runs, status: 200
  end

  def create

    @run = Run.create(run_params)

     # @run.date = @run.run_day.to_date
     # @run.time = @run.run_day



    current_user.runs.push(@run)

    render json: @run

  end

  def show
    @run = Run.find(params[:id])


    render json: @run, status: 200

  end

  def update
    @run = Run.find(params[:id])

    # if @run.users.length > 0

    # current_user.runs.push(@run)

    @run.users.push(current_user)

    render json: @run, status: 200

  end

  private

  def run_params
    params.require(:run).permit(:name, :description, :distance, :expected_pace, :expected_end_time, :run_day, :lat, :lng)
  end

end
