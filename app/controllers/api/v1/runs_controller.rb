class Api::V1::RunsController < ApplicationController

  def index
    @runs = Run.all
    render json: @runs, status: 200
  end

  def create
    @run = Run.create(params[:id])
    render json: @run

  end

  def show
    @run = Run.find(params[:id])

    render json: @run, status: 200

  end

  private

  def run_params
    params.permit( :name, :description, :distance, :expected_pace, :start_time, :expected_end_time, :date, :lat, :lng)
  end

end
