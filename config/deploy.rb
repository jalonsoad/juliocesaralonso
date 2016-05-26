
lock '3.5.0'

set :application, 'juliocesaralonso.com'
set :repo_url, 'git@github.com:jalonsoad/juliocesaralonso.git'


ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call


# setup rvm.
set :rbenv_type, :user
#set :rbenv_ruby, '2.3.1'
set :rbenv_path, '/usr/bin'

#set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
#set :rbenv_map_bins, %w{rake gem bundle ruby rails}


set :use_sudo, false
set :bundle_binstubs, nil
set :linked_files, fetch(:linked_files, []).push('config/database.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:reload'
  end
end