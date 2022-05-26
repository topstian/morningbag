#!/bin/sh

FROM quay.io/evl.ms/fullstaq-ruby:3.0.3-jemalloc-bullseye-slim
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
WORKDIR /morningbag
COPY Gemfile /morningbag/Gemfile
COPY Gemfile.lock /morningbag/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /morningbag