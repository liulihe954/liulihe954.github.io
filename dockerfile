# Create a Jekyll site from a Ruby Alpine image

# At a minimim, use Ruby 2.5 or later

#FROM ruby:2.7-alpine3.15
# # Add Jekyll dependencies to Alpine
# RUN apk update
# RUN apk add --no-cache build-base gcc cmake git

# # Update Ruby and install Jekyll
# RUN gem update --system

# Use Ruby image as the base
FROM ruby:latest


# RUN gem update bundler && gem install bundler jekyll
# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Create a directory for your Jekyll site
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile* ./

# Install Ruby dependencies
RUN bundle install

# Copy the Jekyll site's code
COPY . .

# bundle add jekyll --version "~>3.9.0"
# bundle install
# bundle update
# bundle exec jekyll serve