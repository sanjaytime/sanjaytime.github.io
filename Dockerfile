# syntax=docker/dockerfile:1
FROM ubuntu:22.10
COPY . /app

WORKDIR /app

# Enable sudo commands
RUN apt-get update && \
      apt-get -y install sudo

# Install Ruby
RUN sudo apt-get -y install ruby-full build-essential zlib1g-dev

# Install Bundler
RUN sudo gem install bundler

# Install gems
RUN bundle install

