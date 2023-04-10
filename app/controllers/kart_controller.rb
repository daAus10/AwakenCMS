class KartController < ApplicationController
  before_action :set_kart
  before_action :index
  before_action :initialize_cart
  before_action :set_navbar_views

  before_action :set_render_kart_count

  def set_render_kart_count
    @render_kart_count = true
  end


  def set_navbar_views
    @navbar_views = NavbarView.all
  end

  def show
    @render_cart = true
    @appointment = Appointment.new
    @taken_time_slots = Appointment.where("created_at >= ?", Time.zone.now.beginning_of_day).pluck(:time).flatten
    @taken_time_slots ||= []
  end

  def index
    @kart = Kart.find_or_create_by(id: session[:kart_id])
    session[:kart_id] ||= @kart.id
  end

  def set_kart
    @kart = Kart.find_or_create_by(id: session[:kart_id])
    session[:kart_id] ||= @kart.id
  end

  def add
    item_ids = params[:service_item_ids]
    if item_ids
      item_ids.each do |id|
        product = Product.find(id)
        if product
          orderable = @kart.orderables.find_or_initialize_by(product_id: product.id)
          if orderable.quantity.nil?
            orderable.quantity = 1
          else
            orderable.quantity += 1
          end
          orderable.save
        end
      end
    end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace('kart',
                               partial: 'kart/kart',
                               locals: { kart: @kart }),
          turbo_stream.replace('kart_items'),
          turbo_stream.replace('cart-count',
                               partial: 'layouts/cart_count',
                               locals: { count: cart_item_count.to_i })
        ]
      end
    end
    end

  def remove
    orderable = @kart.orderables.find(params[:id])
    orderable.destroy
    cart_item_count = @kart.orderables.count
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.remove("cart_item_#{orderable.id}"),
          turbo_stream.replace('cart-count', partial: 'layouts/cart_count', locals: { count: cart_item_count })
        ]
      end
      format.html { redirect_to kart_path }
    end
  end


end


# def remove
#   orderable = @kart.orderables.find(params[:id])
#   orderable.destroy
#   respond_to do |format|
#     format.turbo_stream do
#       render turbo_stream: turbo_stream.remove("cart_item_#{orderable.id}")
#     end
#     format.html { redirect_to kart_path }
#   end
# end



#
# def remove
#   # Find the orderable by id
#   orderable = Orderable.find_by(id: params[:id])
#   # Destroy the orderable if it exists
#   orderable.destroy if orderable
#
#   # Check the format of the request
#   respond_to do |format|
#     # If the request is a Turbo Stream format
#     format.turbo_stream do
#       # Render a Turbo Stream response
#       render turbo_stream: [
#         # Replace the "kart" element with the updated kart partial
#         turbo_stream.replace('kart',
#                              partial: 'kart/kart',
#                              locals: { kart: @kart }),
#         # Replace the "kart_items" element with an empty string
#         turbo_stream.replace('kart_items'),
#         # Replace the "cart-count" element with the updated cart count partial
#         turbo_stream.replace('cart-count',
#                              partial: 'layouts/cart_count',
#                              locals: { count: cart_item_count })
#       ]
#     end
#   end
# end
