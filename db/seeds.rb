# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed data for AboutView
AboutView.create(title: "About Us", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.", about_link: "about-us")

# Seed data for ActiveStorage::Blob and ActiveStorage::Attachment (not necessary to create seed data)

# Seed data for Appointment
Appointment.create(name: "John Smith", phone: "555-555-5555", date: Date.today, email: "john@example.com", special_needs: "None", employee_id: 1)

# Seed data for ContactItem
ContactItem.create(image: "contact-image.jpg", attachment: "contact-attachment.pdf", contactType: "Email", string: "Email Us", contact: "info@example.com")

# Seed data for ContactType
ContactType.create(title: "Phone", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")



# Seed data for Employee
Employee.create(name: "Jane Doe")

# Seed data for FooterView
FooterView.create(brand_name: "My Brand", group_title: "My Group", monday: "9:00am - 5:00pm", tuesday: "9:00am - 5:00pm", wednesday: "9:00am - 5:00pm", thursday: "9:00am - 5:00pm", friday: "9:00am - 5:00pm", saturday: "Closed", sunday: "Closed")

# Seed data for GalleryImagePost
GalleryImagePost.create

# Seed data for GalleryView
GalleryView.create(title: "Gallery", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.", external_link: "gallery")

# Seed data for HeroView
HeroView.create(title: "Welcome to My Site", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.", button: "Learn More", isVisible: true)

# Seed data for HotNewView
HotNewView.create(title: "Hot News", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.", isVisible: true, link: "hot-news")


# Seed data for NavbarView
NavbarView.create(brand_name: "My Brand", link_name1: "Home", link_name2: "Services", link_name3: "Gallery", link_name4: "Contact", services_link: "services", gallery_link: "gallery")

# Seed data for Role
Role.create(name: "Admin")

# Seed data for ServiceCategory
ServiceCategory.create(title: "Hair Services", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.", link: "hair-services")

# Seed data for ServiceItem
ServiceItem.create(service_name: "Haircut", time: 30, price: 25, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.")

# Seed data for ServiceViewCard
ServiceViewCard.create(title: "Our Services", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc gravida mauris ac justo finibus, vitae pharetra enim hendrerit.")
