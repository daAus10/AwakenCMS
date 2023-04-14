class CanvasController < ApplicationController
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

  def home
    # add any code here that you need for your home page
    render :index
    render 'kart/show'
  end
  def index
    @navbar_view = NavbarView.first
    @hero_view = HeroView.first
    @about_view = AboutView.first
    @hot_section_view = HotNewView.first
    @products_category = ProductCategory.all
    @service_view = ServiceViewCard.first
    @gallery_view = GalleryView.first
    @contact = Contact.all
    @map_view = MapView.first
    @footer_view = FooterView.first



    # Code moved from ReviewViewsController#index
    require 'net/http'
    require 'json'

    place_id = "ChIJ7zZmas4pO4gRGLzcslTUZaM"
    api_key = "AIzaSyBDI-RseTM2pc_wUY6TyrxpdOHv4Z0K19Q"


    url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{api_key}"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)


    @reviews = result["result"]["reviews"]
  end
end
