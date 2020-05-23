source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.2', require: false

# webbit custom gems
gem 'acts_as_votable', '~> 0.12.1'
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'carrierwave', '~> 2.1'
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'validate_url', '~> 1.0', '>= 1.0.8'
gem 'inline_svg', '~> 1.7', '>= 1.7.1'
gem 'sidekiq', '~> 6.0', '>= 6.0.6'
gem 'ransack', '~> 2.3', '>= 2.3.2'
gem 'friendly_id', '~> 5.3'
gem 'meta-tags', '~> 2.13'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
