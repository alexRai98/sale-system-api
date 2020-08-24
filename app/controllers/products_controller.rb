class ProductsController < ApplicationController
  
  def index 
    business = Business.find(params[:business_id])
    @products = business.products
    if @products
      render json: @products
    else
      render json: @products.errors, status: :unprocessable_entity
    end
  end

  def show
    business = Business.find(params[:business_id])
    @product = business.products
    render json: Product.find(params[:id])
  end

  def create
    business = Business.find(params[:business_id])
    @product = business.products.new(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    business = Business.find(params[:business_id])
    @product =business.products.find(params[:id])
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
