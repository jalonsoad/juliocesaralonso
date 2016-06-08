
set :rbenv_ruby, '2.3.1'

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano3/unicorn'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
#Dir.glob('lib/capistrano/**/*.rb').each { |r| import r }
#Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }