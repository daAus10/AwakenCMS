# Awaken Skin & Hair Studio
<img src="https://user-images.githubusercontent.com/91813831/233250883-93deb45d-98c3-4c43-a5ab-eb4eee1a3fe8.png" alt="Awaken Skin & Hair Studio Logo" width="110" height="130">

## Description
This project is a website for Awaken Skin Studio, a spa dedicated to providing clients with a relaxing environment, safe and effective treatments, and friendly service from experienced technicians and specialists. The website serves as a web-based appointment booking system designed for a skincare and spa studio, allowing clients to view available services, book appointments, consent to digital consent forms, and access information about the spa's services and specials. The system also provides functionalities for receptionists to assign appoinments to certain employees. Each employee knows their roles(assigned and created on the site) and can see how much work the have for the day! The manager can update the website content, services, and employee information, ensuring a seamless and user-friendly experience for both clients and staff.



## Prerequisites for Running a Ruby on Rails Application

Ensure you have the following installed before running a Rails application:

### Core Components
- **Ruby**: Check with `ruby -v` or install from [Ruby website](https://www.ruby-lang.org/en/downloads/)
- **Rails**: Install with `gem install rails`
- **Bundler**: Install with `gem install bundler`

### JavaScript Environment
- **Node.js**: Install from [Node.js website](https://nodejs.org/en/download/)
- **Yarn**: Install from [Yarn website](https://classic.yarnpkg.com/en/docs/install/)

### Database
- **SQLite**: Pre-installed on macOS/Linux, or download from [SQLite website](https://www.sqlite.org/download.html)
- *Optional:* PostgreSQL, MySQL, or another preferred database

### Version Control
- **Git**: Install from [Git website](https://git-scm.com/downloads)

With these prerequisites in place, clone the Rails application repository and follow the application-specific setup instructions.



### Installation and Running Awakens CMS Application

Once you have the prerequisites installed, follow these general installation steps to set up and run the Rails application:

1. **Clone the repository:**
git clone https://github.com/your-username/your-rails-repo.git
cd your-rails-repo


2. **Install gem dependencies:**
```
bundle install

```
3. **Configure the database:**
- Create the database and run migrations:
    ```
    rails db:create
    rails db:migrate
    
    ```
  
  
4. **Seed the database:**
- You can find the seed data in 'config/seeds.rb'
   ```
    rails db:Seed
    
   ```

5. **Run the Rails server:**
    ```
    rails s
    OR
    rails server

    ```


Your application should now be running at [http://127.0.0.1:3000](http://127.0.0.1:3000).

For application-specific setup instructions, refer to the project's README or documentation.

### ERD Diagram
<img width="1493" alt="ERD Diagram" src="https://user-images.githubusercontent.com/91813831/232661208-4045a5d4-fd22-4b38-b850-4bb98e994a25.png">
[erd.pdf](https://github.com/BobolaObi/AwakenCMS/files/11257536/erd.pdf)


## Compatibility

### Target OS
- Windows
- macOS
- Linux

### Target Browsers
- Google Chrome
- Mozilla Firefox
- Safari
- Microsoft Edge

### Screen Size Compatibility Chart
- Mobile: 360x640 and up
- Tablet: 768x1024 and up
- Desktop: 1366x768 and up

### Web Browser Compatibility Chart
- Google Chrome (v90 and up)
- Mozilla Firefox (v80 and up)
- Safari (v14 and up)
- Microsoft Edge (v85 and up)

### Device Compatibility Chart
- Tested on various devices, including iPhone, iPad, and Android devices.

## Authors

| Name            | GitHub Account          | Email                  |
| --------------- | ----------------------- | ---------------------- |
| Bobola Obiwale  | BobolaObi               | bobolaobi@github.com   |
| Osten Albaloo   | daAus10                 | daAus10@github.com     |

## License

## Acknowledgements
- Special thanks to our client for providing us with valuable feedback and insights throughout the development process.
- Thank you to our testers who helped ensure the application's compatibility and performance on various devices and browsers.
- We appreciate the guidance and support from our instructor and classmates, as well as Prof. Cai for his valuable input during the development process.
