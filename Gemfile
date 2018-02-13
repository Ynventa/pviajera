# -*- coding: utf-8 -*-

source "https://rubygems.org"

gem "active_model_serializers",
    github: "scalient/active_model_serializers",
    branch: "0-9-stable"
gem "activerecord-session_store"
gem "acts_as_list"
gem "airbrake"
gem "aws-sdk"
gem "bootstrap-sass"
gem "bower-rails"
gem "chartkick"
gem "coffee-rails"
gem "compass-rails"
gem "devise"
gem "ember-rails"
# We're not quite ready for Ember 2.0.
gem "ember-source", "< 2.0.0"
gem "ember-data-source", "< 2.0.0"
gem "finite_machine"
gem "font-awesome-sass"
gem "geocoder"
gem "haml"
gem "haml-rails"
gem "jquery-rails"
gem "libv8"
gem "mustache"
gem "origami"
gem "paperclip"
gem "pg"
gem "prawn"
gem "pundit"
gem "rails", ">= 4.2.3"
gem "redcarpet"
gem "requirejs-rails",
    github: "jwhitley/requirejs-rails"
gem "sass-rails"
gem "scalient-rails",
    git: "git@github.com:scalient/scalient-rails"
gem "sidekiq"
gem "sidetiq"
gem "simple-random"
gem "sprockets"
gem "sqlite3"
gem "therubyracer", platforms: :ruby
gem "thin"
gem "treetop"
gem "twilio-ruby"
gem "uglifier"
gem 'will_paginate', '~> 3.1.3'

group :development do
  gem "capistrano"
  gem "capistrano-bundler"
  gem "capistrano-rails"
  gem "capistrano-rbenv"

  # Include the RSpec Rails gem in development to enable `rake rspec` to run. Ironically, one of the first things it
  # does is to set `RAILS_ENV=test`.
  gem "rspec-rails"
end

group :production do
  gem "unicorn"
end

group :test do
  gem "factory_girl_rails"
  gem "rspec-rails"
end