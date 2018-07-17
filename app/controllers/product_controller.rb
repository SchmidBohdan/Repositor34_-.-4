class ProductController < ApplicationController

  def list
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @countries = Country.all
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)

    if @product.save
          redirect_to :action => 'list'
    else
      @countries = Country.all
      @categories = Category.all
      render :action => 'new'
    end
  end

  def product_params
    params.require(:products).permit(:title, :price, :country_id, :category_id)
  end

  def edit
    @product = Product.find(params["id"])
    @categories = Category.all
    @countries = Country.all
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_param)
      redirect_to :action => 'show', :id => @product
    else
      @countries = Country.all
      @categories = Category.all
      render :action => 'edit'
    end
  end

  def product_param
    params.require(:product).permit(:title, :price, :country_id, :category_id)
  end


  def delete
    Product.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def show_categories
    @category = Category.find(params[:id])
  end

  def show_countries
    @country = Country.find(params[:id])
  end
end
