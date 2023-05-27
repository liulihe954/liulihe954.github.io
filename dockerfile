# Create a Jekyll site from a Ruby Alpine image

# At a minimim, use Ruby 2.5 or later

FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update Ruby and install Jekyll
RUN gem update --system

RUN gem update bundler && gem install bundler jekyll
