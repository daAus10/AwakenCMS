class CanvasController < ApplicationController
  before_action :initialize_cart
  before_action :set_render_kart


  def set_render_kart
    @render_kart = true
    @kart = Kart.find_or_create_by(id: session[:kart_id])
    session[:kart_id] ||= @kart.id
  end

  def initialize_cart
    @kart ||= Kart.find_by(id: session[:kart_id])
  end

  if @kart.nil?
    @kart = Kart.create
    session[:kart_id] = @kart.id
  end
  def home
    # add any code here that you need for your home page
    render :index
    render 'kart/show'
  end
  def index
    @navbar_view = NavbarView.all
    @hero_view = HeroView.where(isVisible: true)
    @about_view = AboutView.all
    @hot_section_view = HotNewView .all
    @service_view = ServiceViewCard.all
    @gallery_view = GalleryView.all
    @contact_view = ContactType.all
    @map_view = MapView.all
    @footer_view = FooterView.all
  end
end
