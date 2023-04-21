# Use Ruby 3.0.0 as the base image
FROM ruby:3.0.0

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

# Install bundler and run bundle install to install dependencies
RUN gem install bundler && bundle install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
