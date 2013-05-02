class ProductsController < ApplicationController
  def index
    @products = Search.filter_products(params)
    @categories = Category.includes(:products).all
  end

  def show
    session[:return_to] = request.fullpath
    @product = Product.includes(:order_items, :sales, {:categories => :sales}).find(params[:id])
    @ratings = Rating.where(product_id: params[:id])
  end
end
