source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'
# gem 'rails', '~> 6.1', '>= 6.1.4'
gem 'rails', '~> 5.2', '>= 5.2.6'
gem 'sqlite3'
gem "puma", ">= 4.3.8"
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "bootstrap", ">= 4.3.1"
gem 'jquery-rails'
gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'devise'
gem 'bundler', '~> 2.2', '>= 2.2.23'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
      gem lib, git: "https://github.com/rspec/#{lib}.git", branch: 'main' # Previously '4-0-dev' or '4-0-maintenance' branch
  end
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
