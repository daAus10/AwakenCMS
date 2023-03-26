class AdminEditorController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  def editorIndex
    @appointments = Appointment.all
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

  private
  def authorize_user
    unless current_user
      redirect_to root_path, alert: "You must be an admin to access this page."
    end
  end

end

