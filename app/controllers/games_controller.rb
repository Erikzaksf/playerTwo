class GamesController < ActionController::Base




  def index
    @games = Game.all
    # @order_item = current_order.order_items.new     LATER ON MAKE FUNCTIONAL!!!!
  end
  def show
    @game = Game.find(params[:id])
  end
  def new
    # authorize
    # @game.user.admin === true
    @game = Game.new
  end
  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "Game posted successfully!"
      respond_to do |format|
       format.html { redirect_to game_path(@game) }
       format.js
     end
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end
  end

  private
    def game_params
      params.require(:game).permit(:name, :about, :price)
    end
end
