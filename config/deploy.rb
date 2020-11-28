require 'mina/rails'
require 'mina/git'
require 'mina/rvm'

set :application_name, 'profile'
set :domain, '64.227.9.55'
set :user, fetch(:application_name)
set :deploy_to, "/home/#{fetch(:user)}/app"
set :repository, 'git@github.com:bogdan8/profile.git'
set :branch, 'master'
set :rvm_use_path, '/etc/profile.d/rvm.sh'

set :shared_files, fetch(:shared_files, []).push('config/database.yml', 'config/secrets.yml')

task :remote_environment do
  ruby_version = File.read('.ruby-version').strip
  raise "Couldn't determine Ruby version: Do you have a file .ruby-version in your project root?" if ruby_version.empty?

  invoke :'rvm:use', ruby_version
end

task :setup do
  in_path(fetch(:shared_path)) do
    command %[mkdir -p config]

    # Create database.yml for Postgres if it doesn't exist
    path_database_yml = "config/database.yml"
    database_yml = %[production:
  database: #{fetch(:user)}
  adapter: postgresql
  pool: 5
  timeout: 5000]
    command %[test -e #{path_database_yml} || echo "#{database_yml}" > #{path_database_yml}]

    # Create secrets.yml if it doesn't exist
    path_secrets_yml = "config/secrets.yml"
    secrets_yml = %[production:\n  secret_key_base:\n    #{`bundle exec rake secret`.strip}]
    command %[test -e #{path_secrets_yml} || echo "#{secrets_yml}" > #{path_secrets_yml}]
    
    # Remove others-permission for config directory
    command %[chmod -R o-rwx config]
  end

end

desc "Deploys the current version to the server."
task :deploy do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'
    invoke :'deploy:cleanup'

    on :launch do
      command "sudo systemctl restart #{fetch(:user)}"
    end
  end
end
