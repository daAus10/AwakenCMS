class ApplicationController < ActionController::Base
  before_action :set_render_kart
  before_action :initialize_cart

  def set_render_kart
    @render_kart = true
  end

  def initialize_cart
    @kart ||= Kart.find_by(id: session[:kart_id])
  end

  if @kart.nil?
    @kart = Kart.create
    session[:kart_id] = @kart.id
  end
end
