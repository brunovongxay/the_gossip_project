class WelcomeController < ApplicationController
  def index
    @users = User.all
    @gossips = Gossip.all
  end
end
