class GamesController < ActionController::Base
  def index
    @games = Game.all
    # @order_item = current_order.order_items.new     LATER ON MAKE FUNCTIONAL!!!!
  end

end
