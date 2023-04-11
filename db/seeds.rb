# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "admin@gmail.com", password: "admin12345", password_confirmation: "admin12345")


# Seed data for NavbarView
NavbarView.create(brand_name: "Awaken", link_name1: "about", link_name2: "services", link_name3: "gallery", link_name4: "contact", services_link: "services", gallery_link: "gallery")

# Seed data for AboutView
AboutView.create(title: "About Us", description: "Welcome to our spa, where we offer a wide range of treatments designed to help you relax, rejuvenate, and find balance. Our skilled therapists are dedicated to providing personalized services tailored to your needs.", about_link: "about-us")

# Seed data for Appointment

# Seed data for ContactItem
ContactItem.create(image: "contact-image.jpg", attachment: "contact-attachment.pdf", contactType: "Email", string: "Email Us", contact: "info@spaexample.com")

# Seed data for ContactType
ContactType.create(title: "Phone", description: "Feel free to give us a call to schedule an appointment or ask any questions about our services.")


# Seed data for EmployeeRole
EmployeeRole.create(employee_id: 1, role_id: 1)

# Seed data for FooterView
FooterView.create(brand_name: "Spa Example", group_title: "Opening Hours", monday: "9:00 AM - 7:00 PM", tuesday: "9:00 AM - 7:00 PM", wednesday: "9:00 AM - 7:00 PM", thursday: "9:00 AM - 7:00 PM", friday: "9:00 AM - 7:00 PM", saturday: "10:00 AM - 6:00 PM", sunday: "Closed")

# Seed data for GalleryView
GalleryView.create(title: "Relaxing Atmosphere", description: "Enjoy a peaceful and calming environment during your spa visit.", external_link: "www.example.com/gallery")

# Seed data for HeroView
HeroView.create(title: "Welcome to Our Spa", description: "Experience the ultimate relaxation and rejuvenation.", button: "Book Now", isVisible: true)

# Seed data for HotNewView
HotNewView.create(title: "New Treatment Alert", description: "Try our newest treatment, designed to help you unwind and relax.", isVisible: true, link: "new-treatment")


# Seed data for MapView
MapView.create(url: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345096037!2d144.9559253155046!3d-37.81720997975192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218ce7e33!2s23+Spencer+St%2C+Melbourne+VIC+3000%2C+Australia!5e0!3m2!1sen!2sus!4v155428")






# Seed data for ProductCategory
ProductCategory.create(title: "Facial Products", description: "Our facial products are specially formulated to cleanse, nourish, and protect your skin. From cleansers and toners to moisturizers and serums, we have everything you need for a healthy, glowing complexion.", link: "facial-products")
ProductCategory.create(title: "Body Products", description: "Our body products are designed to hydrate, exfoliate, and pamper your skin from head to toe. From body lotions and scrubs to bath oils and salts, we have everything you need for a luxurious spa experience at home.", link: "body-products")
ProductCategory.create(title: "Makeup Products", description: "Our makeup products are carefully selected to enhance your natural beauty. From foundations and concealers to lipsticks and eyeshadows, we have everything you need for a flawless look.", link: "makeup-products")
ProductCategory.create(title: "Nail Products", description: "Our nail products are perfect for achieving salon-quality nails at home. From nail polishes and topcoats to nail care tools and accessories, we have everything you need to keep your nails looking their best.", link: "nail-products")
ProductCategory.create(title: "Fragrance Products", description: "Our fragrance products are specially selected to evoke a sense of relaxation and tranquility. From essential oils and candles to diffusers and incense, we have everything you need to create a soothing atmosphere in your home or office.", link: "fragrance-products")
ProductCategory.create(title: "Men's Products", description: "Our men's products are specially formulated to meet the unique needs of men's skin and hair. From shaving creams and aftershaves to hair gels and pomades, we have everything you need to look and feel your best.", link: "mens-products")
ProductCategory.create(title: "Gift Sets", description: "Our gift sets make the perfect present for any occasion. From curated selections of our favorite products to customizable sets tailored to your recipient's preferences, we have something for everyone on your list.", link: "gift-sets")
ProductCategory.create(title: "Spa Accessories", description: "Our spa accessories are designed to enhance your at-home spa experience. From cozy robes and slippers to towels and headbands, we have everything you need to create a luxurious spa experience in the comfort of your own home.", link: "spa-accessories")
ProductCategory.create(title: "Health & Wellness Products", description: "Our health and wellness products are designed to promote overall wellbeing and balance. From supplements and teas to yoga mats and fitness equipment, we have everything you need to support a healthy lifestyle.", link: "health-wellness-products")
ProductCategory.create(title: "Organic Products", description: "Our organic products are made with natural and sustainable ingredients, ensuring that you can feel good about what you're putting on your skin and hair. From skincare and haircare to makeup and fragrances, we have everything you need for a clean and conscious beauty routine.", link: "organic-products")




# Seed data for Employee
Employee.create(name: "Emma Johnson")
Employee.create(name: "Olivia Davis")
Employee.create(name: "Ava Martinez")
Employee.create(name: "Sophia Rodriguez")
Employee.create(name: "Isabella Taylor")

# Seed data for FooterView
FooterView.create(brand_name: "My Brand", group_title: "My Group", monday: "9:00am - 5:00pm", tuesday: "9:00am - 5:00pm", wednesday: "9:00am - 5:00pm", thursday: "9:00am - 5:00pm", friday: "9:00am - 5:00pm", saturday: "Closed", sunday: "Closed")

# Seed data for GalleryImagePost
GalleryImagePost.create

# Seed data for Role
Role.create(name: "Massage Therapist")
Role.create(name: "Esthetician")
Role.create(name: "Nail Technician")
Role.create(name: "Body Wrap Specialist")
Role.create(name: "Reflexologist")
Role.create(name: "Aromatherapist")
Role.create(name: "Hair Stylist")
Role.create(name: "Makeup Artist")
Role.create(name: "Acupuncturist")
Role.create(name: "Yoga Instructor")


# Seed data for ServiceViewCard
ServiceViewCard.create(title: "Our Products", description: "At our spa, we only use and sell the highest quality products. From hair care to skin care, we have everything you need to feel and look your best.")
