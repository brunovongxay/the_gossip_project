class GossipsController < ApplicationController

#   def new
#  # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l’utilisateur
#  # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
#  # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
#  #/redirect index
#     @gossip = Gossip.new
#   end

#   def create
#    @gossip = Gossip.new(title: params[:title],content: params[:content], user_id: 40)
 
#     if @gossip.save
#    redirect_to gossips_path
#    # si ça marche, il redirige vers la page d’index du site
#     else
#    render new_gossip_path
#    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
#     end

#   end

  def index
      @gossip = Gossip.all
    end
    def show
      @gossip = Gossip.find(params[:id])
    end
    def edit
      @gossip = Gossip.find(params[:id])
    end
    def update
      @gossip= Gossip.find(params[:id])
      post_params
      @gossip.update(gossip_params)
      redirect_to gossips_path
    end
    def new
      @gossip = Gossip.new
    end
    def create
      gossip = Gossip.create(gossip_params)
      redirect_to gossip_path(gossip.id)
    end
    def destroy
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to gossips_path
    end
  end
  
  private
  def gossip_params
    params.require(:gossip).permit(:title,:content)
  end


