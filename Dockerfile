# This tells Docker which image to use, this is an official ruby image from docker
FROM ruby:2.7.2

#<<<RUN  ALL THESE IN THE TERMINAL BEFORE>>>
#RUN gem install nokogiri --platform=ruby
#RUN bundle config set force_ruby_platform true
#RUN
# Update the repo listens in the container
RUN apt-get update

# Install the following packages into the container
RUN apt-get install --assume-yes --no-install-recommends build-essential \
    postgresql-client \
    ca-certificates \
    nodejs \
    graphviz

# Specify the environment variable APP with the path
ENV APP /usr/src/app

# This makes the directory for the app
RUN mkdir -p $APP

# This tells the container where we will be working from
WORKDIR $APP

# This copies the gemfile and gemfile.lock to the app folder
COPY Gemfile* $APP/

# This tells it to run bundle install on as many threads as it has available
RUN bundle install --jobs=$(nproc)

# This tells it to copy our code into the app folder
COPY . $APP/

# This tells the container to start the rails server on port 3000 and bind to wildcard IP
CMD ["bin/rails", "server" , "-p", "3000", "-b", "0.0.0.0"]


