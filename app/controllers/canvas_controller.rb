class CanvasController < ApplicationController
  def index
    @navbar_view = NavbarView.all
    @hero_view = HeroView.where(isVisible: true)
    @about_view = AboutView.all
    @hot_section_view = HotNewView .all
    @service_category = ServiceCategory.all
    @gallery_view = GalleryView.all
    @contact_view = ContactType.all
    @map_view = MapView.all
    @footer_view = FooterView.all
  end
end
