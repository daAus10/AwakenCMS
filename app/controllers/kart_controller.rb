class KartController < ApplicationController
  before_action :set_kart
  before_action :index
  before_action :initialize_cart


  def show
    @render_cart = false
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
                               locals: { kart: @kart }
          ),
          turbo_stream.replace('kart_items')
        ]
      end
    end
    end


  def remove
    orderable = Orderable.find_by(id: params[:id])
    orderable.destroy if orderable
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [turbo_stream.replace('kart',
                                                   partial: 'kart/kart',
                                                   locals: { kart: @kart }),
                              turbo_stream.replace('kart_items')]
      end
    end
  end

  end




# def add
#   # This si the code for turbo method
#   respond_to do |format|
#     format.turbo_stream do
#       render turbo_stream: [
#         turbo_stream.replace('cart', partial: 'kart/kart', locals: { kart: @kart })
#       ]
#     end
#   end
# end

# def remove
#   # ...
#   respond_to do |format|
#     format.turbo_stream do
#       render turbo_stream: [
#         turbo_stream.replace('cart', partial: 'kart/kart', locals: { kart: @kart })
#       ]
#     end
#
#   end
# end
