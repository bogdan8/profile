require 'dotenv/load'

set :stage, :production
set :branch, 'develop'
set :user, 'ubuntu'

role :app, ENV['PRODUCTION_SERVER']
role :web, ENV['PRODUCTION_SERVER']
role :db, ENV['PRODUCTION_SERVER']

server ENV['PRODUCTION_SERVER'], user: fetch(:user), roles: %w{app, web}, primary: true
ssh_options = { keys: ["#{ENV['HOME']}/.ssh/amazon.pem"], forward_agent: true }

set :deploy_to, "/home/#{fetch(:user)}"

set :rails_env, :production

set :ssh_options, { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }

set :puma_init_active_record, true

set :enable_ssl, false

set :pty,             true
set :use_sudo,        false
set :deploy_via,      :remote_cache
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/profile-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/profile-puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/profile-puma.pid"
set :puma_access_log, "#{release_path}/log/profile-puma.error.log"
set :puma_error_log,  "#{release_path}/log/profile-puma.access.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
