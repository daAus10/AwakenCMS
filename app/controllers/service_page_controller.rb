include ServiceViewCardsHelper
class ServicePageController < ApplicationController
  def serviceIndex
    # ServiceViewCardHeader data
    @service_data_title = ServiceViewCard.pluck(:title)
    @service_data_desc = ServiceViewCard.pluck(:description)


    @service_cat = ServiceCategory.all
    @service_items = ServiceItem.all

  end
end
