include ServiceViewCardsHelper
class ServicePageController < ApplicationController
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end
  def serviceIndex
    # ServiceViewCardHeader data
    @service_data_title = ServiceViewCard.pluck(:title)
    @service_data_desc = ServiceViewCard.pluck(:description)


    @service_cat = ServiceCategory.all
    @service_items = ServiceItem.all

  end
end
