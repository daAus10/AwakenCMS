include ServiceViewCardsHelper
class ServicePageController < ApplicationController

  before_action :cart_item_count
  helper_method :cart_item_count
  before_action :set_render_kart_count

  def set_render_kart_count
    @render_kart_count = true
  end

  def cart_item_count
    @kart = Kart.find_or_create_by(id: session[:kart_id])
    @cart_item_count = @kart.orderables.sum(:quantity)
  end


  def serviceIndex
    # ServiceViewCardHeader data
    @service_data_title = ServiceViewCard.pluck(:title)
    @service_data_desc = ServiceViewCard.pluck(:description)


    @product_cat = ProductCategory.all
    @products = Product.all

  end


end






