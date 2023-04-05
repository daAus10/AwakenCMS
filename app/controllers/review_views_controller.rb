class ReviewViewsController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    # Set up the API endpoint and parameters
    place_id = "ChIJ7zZmas4pO4gRGLzcslTUZaM"
    api_key = "AIzaSyBDI-RseTM2pc_wUY6TyrxpdOHv4Z0K19Q"
    url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{api_key}"

    # Make an HTTP request to the API endpoint and parse the response JSON
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)

    # Print the reviews
    @reviews = result["result"]["reviews"]
    # {
    #                   "author_name" => "Karen Durette",
    #                    "author_url" => "https://www.google.com/maps/contrib/106149458046031143286/reviews",
    #                      "language" => "en",
    #             "original_language" => "en",
    #             "profile_photo_url" => "https://lh3.googleusercontent.com/a/AGNmyxY1Q5cBkU7nbopThTqpDucESoQoncKX83tgyVEa=s128-c0x00000000-cc-rp-mo",
    #                        "rating" => 5,
    #     "relative_time_description" => "2 months ago",
    #                          "text" => "Teuta did my hydrafacial.  They have up to date technology.  She was welcoming, funny and professional.  She is very good and experienced.  Nadia was welcoming and answered my questions via email.  Nadia also was kind enough to inquire about my experience the next day.  I was introduced the team that makes this hair and skin salon a success and I will definitely be a regular client.\n\nI had a free 15 minute hair consultation with Lara.  After 18 years with the same hair stylist I took a chance on her advice and had her do my hair.  I was so nervous as I am going on vacation soon.  She far exceeded my expectations and I now have a new stylist.   These ladies are truly wonderful.   I highly recommend them.",
    #                          "time" => 1674637152,
    #                    "translated" => false
    # }
  end
end
