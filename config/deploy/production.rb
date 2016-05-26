set :port, 22
set :user, 'deploy'
set :deploy_via, :remote_cache
set :use_sudo, false

server '146.255.96.152',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/var/www/vhost/#{fetch(:application)}"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'deploy',
}

set :rails_env, :production
set :conditionally_migrate, true    
