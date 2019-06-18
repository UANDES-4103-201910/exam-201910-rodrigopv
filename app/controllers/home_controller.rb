class HomeController < ApplicationController

 def index
   @brands = Product.distinct.pluck(:brand)
   @products = Product.all
 end

 def addToCart
 end

end
