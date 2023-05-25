FROM ubuntu:23.10

RUN apt-get update && apt-get -y install sudo

RUN sudo apt-get install ruby-full build-essential zlib1g-dev

ENV GEM_HOME="$HOME/gems"
ENV PATH="$HOME/gems/bin:$PATH"

RUN gem install jekyll bundler

