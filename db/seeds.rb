# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "admin@gmail.com", password: "admin12345", password_confirmation: "admin12345")


# Seed data for NavbarView
NavbarView.create(brand_name: "Awaken", link_name1: "gallery", link_name2: "services", link_name3: "", link_name4: "", services_link: "", gallery_link: "")

# Seed data for AboutView
AboutView.create(title: "About Us", description: "Welcome to our spa, where we offer a wide range of treatments designed to help you relax, rejuvenate, and find balance. Our skilled therapists are dedicated to providing personalized services tailored to your needs.", about_link: "about-us")

# Seed data for EmployeeRole
EmployeeRole.create(employee_id: 1, role_id: 1)

# Seed data for GalleryView
GalleryView.create(title: "Relaxing Atmosphere", description: "Enjoy a peaceful and calming environment during your spa visit.", external_link: "http://127.0.0.1:3000/gallery")

# Seed data for HeroView
HeroView.create(title: "Welcome to Our Spa", description: "Experience the ultimate relaxation and rejuvenation.", button: "Book Now")

# Seed data for HotNewView
HotNewView.create(title: "New Treatment Alert", description: "Try our newest treatment, designed to help you unwind and relax.", isVisible: true, link: "services")

# Seed data for MapView
MapView.create(url: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345096037!2d144.9559253155046!3d-37.81720997975192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218ce7e33!2s23+Spencer+St%2C+Melbourne+VIC+3000%2C+Australia!5e0!3m2!1sen!2sus!4v155428")

# Seed data for ProductCategory
ProductCategory.create(title: "Facial Products", description: "Our facial products are specially formulated to cleanse, nourish, and protect your skin. From cleansers and toners to moisturizers and serums, we have everything you need for a healthy, glowing complexion.", link: "services")
ProductCategory.create(title: "Body Products", description: "Our body products are designed to hydrate, exfoliate, and pamper your skin from head to toe. From body lotions and scrubs to bath oils and salts, we have everything you need for a luxurious spa experience at home.", link: "services")
ProductCategory.create(title: "Makeup Products", description: "Our makeup products are carefully selected to enhance your natural beauty. From foundations and concealers to lipsticks and eyeshadows, we have everything you need for a flawless look.", link: "makeup-products")
# ProductCategory.create(title: "Nail Products", description: "Our nail products are perfect for achieving salon-quality nails at home. From nail polishes and topcoats to nail care tools and accessories, we have everything you need to keep your nails looking their best.", link: "services")
# ProductCategory.create(title: "Fragrance Products", description: "Our fragrance products are specially selected to evoke a sense of relaxation and tranquility. From essential oils and candles to diffusers and incense, we have everything you need to create a soothing atmosphere in your home or office.", link: "services")
# ProductCategory.create(title: "Men's Products", description: "Our men's products are specially formulated to meet the unique needs of men's skin and hair. From shaving creams and aftershaves to hair gels and pomades, we have everything you need to look and feel your best.", link: "services")
# ProductCategory.create(title: "Gift Sets", description: "Our gift sets make the perfect present for any occasion. From curated selections of our favorite products to customizable sets tailored to your recipient's preferences, we have something for everyone on your list.", link: "services")
# ProductCategory.create(title: "Spa Accessories", description: "Our spa accessories are designed to enhance your at-home spa experience. From cozy robes and slippers to towels and headbands, we have everything you need to create a luxurious spa experience in the comfort of your own home.", link: "services")
# ProductCategory.create(title: "Health & Wellness Products", description: "Our health and wellness products are designed to promote overall wellbeing and balance. From supplements and teas to yoga mats and fitness equipment, we have everything you need to support a healthy lifestyle.", link: "services")
# ProductCategory.create(title: "Organic Products", description: "Our organic products are made with natural and sustainable ingredients, ensuring that you can feel good about what you're putting on your skin and hair. From skincare and haircare to makeup and fragrances, we have everything you need for a clean and conscious beauty routine.", link: "services")
#

# Seed data for Employee
Employee.create(name: "Emma Johnson")
Employee.create(name: "Olivia Davis")
Employee.create(name: "Ava Martinez")
Employee.create(name: "Sophia Rodriguez")
Employee.create(name: "Isabella Taylor")

# Seed data for FooterView
FooterView.create(brand_name: "Awaken", group_title: "My Group", monday: "9:00am - 5:00pm", tuesday: "9:00am - 5:00pm", wednesday: "9:00am - 5:00pm", thursday: "9:00am - 5:00pm", friday: "9:00am - 5:00pm", saturday: "Closed", sunday: "Closed")

# Seed data for GalleryImagePost
GalleryImagePost.create

# Seed data for Role
Role.create(name: "Massage Therapist")
Role.create(name: "Esthetician")
Role.create(name: "Nail Technician")
Role.create(name: "Reflexologist")
Role.create(name: "Aromatherapist")
Role.create(name: "Hair Stylist")
Role.create(name: "Makeup Artist")
Role.create(name: "Acupuncturist")


# Seed data for ServiceViewCard
ServiceViewCard.create(title: "Our Products", description: "At our spa, we only use and sell the highest quality products. From hair care to skin care, we have everything you need to feel and look your best.")

require 'faker'

# Assuming you already have 10 categories in your product_categories table
category_ids = ProductCategory.pluck(:id)

# 10.times do |i|
#   category_ids.each do |category_id|
#     Product.create(
#       name: Faker::Commerce.product_name,
#       time: Faker::Time.between(from: 30.days.ago, to: Time.now),
#       description: Faker::Lorem.paragraph(sentence_count: 3),
#       price: Faker::Commerce.price(range: 0.01..999.99, as_string: false),
#       created_at: Faker::Time.between(from: 60.days.ago, to: 30.days.ago),
#       updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
#       product_category_id: category_id
#     )
#   end

product_types = [
  "Facial Cleanser", "Body Lotion", "Face Mask", "Serum", "Exfoliating Scrub",
  "Night Cream", "Eye Cream", "Sunscreen", "Toner", "Facial Mist"
]

adjectives = ["Nourishing", "Hydrating", "Soothing", "Revitalizing", "Rejuvenating"]

key_ingredients = ["Aloe Vera", "Vitamin C", "Green Tea", "Hyaluronic Acid", "Charcoal"]

  spa_skincare_descriptions = [
    "A luxurious facial cleanser infused with natural ingredients to deeply cleanse and rejuvenate your skin.",
    "A soothing and hydrating body lotion with a calming scent, perfect for daily use and sensitive skin.",
    "A revitalizing face mask that helps exfoliate and reveal radiant, younger-looking skin.",
    "An advanced serum packed with antioxidants and essential nutrients to protect and nourish your skin.",
    "A gentle exfoliating scrub that removes impurities and dead skin cells, leaving your skin soft and smooth.",
    "A nourishing night cream that works while you sleep to repair and restore your skin's natural moisture barrier.",
    "An ultra-hydrating eye cream that reduces the appearance of fine lines and wrinkles around the delicate eye area.",
    "A lightweight sunscreen with broad-spectrum protection to shield your skin from harmful UV rays and environmental aggressors.",
    "A refreshing toner that balances your skin's pH levels and prepares it for optimal absorption of skincare products.",
    "A calming facial mist enriched with essential oils to hydrate and soothe your skin throughout the day."
  ]


10.times do |i|
  category_ids.each do |category_id|
    product_type = product_types.sample
    adjective = adjectives.sample
    key_ingredient = key_ingredients.sample

    Product.create(
      name: "#{adjective} #{key_ingredient} #{product_type}",
      time: Faker::Time.between(from: 30.days.ago, to: Time.now),
      description: spa_skincare_descriptions.sample,
      price: Faker::Commerce.price(range: 0.01..999.99, as_string: false),
      created_at: Faker::Time.between(from: 60.days.ago, to: 30.days.ago),
      updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
      product_category_id: category_id
    )
  end
  # 10.times do |i|
  #   category_ids.each do |category_id|
  #     Product.create(
  #       name: "#{Faker::Commerce.product_name} - #{['Spa', 'Skincare'].sample}",
  #       time: Faker::Time.between(from: 30.days.ago, to: Time.now),
  #       description: spa_skincare_descriptions.sample,
  #       price: Faker::Commerce.price(range: 0.01..999.99, as_string: false),
  #       created_at: Faker::Time.between(from: 60.days.ago, to: 30.days.ago),
  #       updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
  #       product_category_id: category_id
  #     )
  #   end

end
