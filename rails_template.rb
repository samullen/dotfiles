gem_group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem "minitest-rails-capybara"
  gem "factory_girl_rails"
  gem "pry-rails"
end

gem_group :development do
  gem 'guard', "~> 2.14", require: false
  gem 'guard-minitest', "~> 2.4", require: false
end

gem_group :test do
  gem "launchy"
end

run "bundle install"

generate "minitest:install"

if yes? 'Do you wish to generate a root controller? (y/n)'
  name = ask('What do you want to call it?').to_s.underscore
  generate :controller, "#{name} show"
  route "root to: '#{name}\#show'"
  route "resource :#{name}, controller: :#{name}, only: [:show]"
end

guardfile = <<-EOL
guard :minitest, :all_on_start => false do
  # with Minitest::Unit
  # watch(%r{^test/(.*)_test\.rb})
  # watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/\#{m[1]}test_\#{m[2]}.rb" }
  # watch(%r{^test/test_helper\.rb})      { 'test' }

  # with Minitest::Spec
  watch(%r{^test/(.*)_test\.rb$})
  watch(%r{^lib/(.+)\.rb$})         { |m| "test/lib/\#{m[1]}_test.rb" }
  watch(%r{^test/test_helper\.rb$}) { 'test' }

  # Rails 4
  watch(%r{^app/(models|mailers|helpers)/(.+)\.rb$}) { |m| 
    "test/\#{m[1]}/\#{m[2]}_test.rb" 
  }
  watch(%r{^app/controllers/api/(.+)_controller\.rb$}) { |m| "test/requests/\#{m[1]}_test.rb" }
  # watch(%r{^app/views/(.+)_mailer/.+}) { |m| "test/mailers/\#{m[1]}_mailer_test.rb" }
end
EOL

create_file "Guardfile", guardfile
