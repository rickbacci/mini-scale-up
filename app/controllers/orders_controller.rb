class OrdersController < ApplicationController
  
  def create
    binding.pry
    item = Item.find(params[:item_id])
    binding.pry
    @current_order.cart_items = { item.id => { :quantity => 1 } }
    binding.pry
    @current_order.save
    redirect_to menu_path, alert: "You are redirected yo!"
  end

end