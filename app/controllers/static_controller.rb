class StaticController < ApplicationController
  def team
  end

  def contact
  end

  def welcome
  end

  def home
    @users = User.all
    @gossips = Gossip.all
  end

  def show
    @id = params[:id]
   @user = User.find(@id)
   @city = @user.city
   puts "Notre params est ici : #{params}"
  end

end