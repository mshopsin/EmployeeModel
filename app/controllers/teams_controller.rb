class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
  
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def delete
  end

  def destroy
  end
end
