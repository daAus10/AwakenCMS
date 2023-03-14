class AdminEditorController < ApplicationController
  before_action :authenticate_user!
  before_action :set_data # assuming you have a method to set instance variables for your views

  def editorIndex
    # controller code goes here
  end

  private

  def set_data
    @appointments = Appointment.all
    @navbar_view = NavbarView.all
    @hero_view = HeroView.where(isVisible: true)
    @about_view = AboutView.all
    @hot_section_view = HotNewView.all
    @service_view = ServiceViewCard.all
    @gallery_view = GalleryView.all
    @contact_view = ContactType.all
    @map_view = MapView.all
    @footer_view = FooterView.all
  end
end
