class ShoppingCartsController < ApplicationController
  before_action :set_product, only: [:add]

  def add
    if session[:cart].nil?
       session[:cart] = Array.new
    end
       session[:cart].push(@product)
       flash[:notice] = "Product added to cart!"
       puts session[:cart].inspect
       redirect_to root_path
  end


  def show
       puts session[:cart]

       @products = session[:cart]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

end
