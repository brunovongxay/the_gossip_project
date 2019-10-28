class StaticController < ApplicationController
  def team
  end

  def contact
  end

  def welcome
   @params = params[:first_name]
    @gossips = []
   Gossip.all.each do |un_gossip|
    @gossips << {author: un_gossip.user.first_name, title: un_gossip.title, user_id: un_gossip.user.id}
   end
  end

  def home
  end

end