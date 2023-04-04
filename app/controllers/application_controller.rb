class ApplicationController < ActionController::Base
  before_action :initialize_cart
  before_action :cart_item_count
  helper_method :cart_item_count
  before_action :initialize_cart

  before_action :set_navbar_views


  def set_navbar_views
    @navbar_views = NavbarView.all
  end

  def initialize_cart

    @kart ||= Kart.find_by(id: session[:kart_id])
  end

  if @kart.nil?
    @kart = Kart.create
    #session[:kart_id] = @kart.id
  end

    def cart_item_count
      @kart = Kart.find_or_create_by(id: session[:kart_id])
      @cart_item_count = @kart.orderables.sum(:quantity)
    end





end
