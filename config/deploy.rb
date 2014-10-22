# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'azm_panel'
set :repo_url, 'git@github.com:sekarasiewicz/azm_panel.git'
set :scm, :git
set :rails_env, 'production'
# set :rvm_type, :system
set :rvm_ruby_version, '2.1.3@azm_panel'
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: '/opt/ruby/bin:$PATH'}

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    # Reload unicorn with capistrano3-unicorn hook
    # needs to be before "on roles()"
    invoke 'unicorn:reload'
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
    end
  end

  before :finishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'

  after 'deploy:rollback', 'deploy:restart'
end
