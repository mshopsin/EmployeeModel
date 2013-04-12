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
      flash[:success] = "Succesfully Created a New Team"
      redirect_to teams_path
    else
      flash[:success] = "An Error Has Occured"
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def delete
    #Team.find(params[:id]).destroy
  end

  def destroy
  end
end
