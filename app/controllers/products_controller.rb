class ProductsController < ApplicationController
  
  def index 
    render json: Product.all 
  end

  def show
    render json: Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    @product =Product.find(params[:id])
    if @product.update(product_params)
      render json: @product
    else
      reder json: @product.errors, status: :unprocessable_entity
    end
  end

  private 

  def product_params
    params.permit(:name,:reatil_price,:wholesale_price,:sale_price,:stock)
  end
end
