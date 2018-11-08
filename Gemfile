source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"
gem "rails", "~> 5.2.1"
gem "bcrypt", "~> 3.1.12"
gem "ffaker"
gem "carrierwave", "~> 1.2.2"
gem "mini_magick", "~> 4.7.0"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "config"
gem "bootstrap-sass", "~> 3.3.7"
gem "i18n-js"
gem "rails-i18n"
gem "sqlite3"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails", "~> 4.3", ">= 4.3.3"
gem "rails-ujs", "~> 0.1.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false

group :production do
  gem "pg", "~> 0.20.0"
  gem "fog", "~> 1.42"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
