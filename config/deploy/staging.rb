set :stage, :staging
set :application, 'zdrav.icfdev.ru'
server 'zdrav.icfdev.ru', user: 'wwwzdrav', port: 233, roles: %w{web app db}
set :rails_env, :staging
set :branch, proc { ENV['BRANCH'] || `git rev-parse --abbrev-ref HEAD`.chomp }
fetch(:default_env).merge!(rails_env: :staging)
