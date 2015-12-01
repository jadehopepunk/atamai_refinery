require "bundler/capistrano"
load 'deploy/assets'

set :application, "avc"
set :repository,  "https://github.com/craigambrose/atamai_refinery.git"

set :domain, "atamaivillage.com"
role :web, domain
role :app, domain
role :db,  domain, :primary => true

set :scm, :git
set :rake, 'bundle exec rake'
set :user, 'atamai'
set :use_sudo, false
set :deploy_via, :remote_cache

task :production do
  set :rails_env, "production"
  set :deploy_to, "/home/#{user}/#{application}/production"
  # after('deploy:create_symlink', 'cache:clear')
end

task :staging do
  set :rails_env, "staging"
  set :deploy_to, "/home/#{user}/#{application}/staging"
  # after('deploy:symlink', 'cruise_control:build')
end


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

before "deploy:finalize_update" do
  link_from_shared_to_current('config')
  run "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
end
after "deploy", "deploy:cleanup"
after "deploy:migrations", "deploy:cleanup"


def link_from_shared_to_current(path, dest_path = path)
  src_path = "#{shared_path}/#{path}"
  dst_path = "#{release_path}/#{dest_path}"
  run "for f in `ls #{src_path}/` ; do ln -nsf #{src_path}/$f #{dst_path}/$f ; done"
end

# desc "precompile the assets locally and push to server"
# task :deploy_assets, :except => { :no_release => true } do
#    run_locally("rake assets:clean assets:precompile")
#    run_locally("rsync -r --delete-after --progress ./public/assets/* #{user}@#{domain}:#{shared_path}/assets/")
#    run_locally("rake assets:clean")
# end
# after "deploy:update_code", "deploy_assets"

# namespace :dragonfly do
#   desc "Symlink the Rack::Cache files"
#   task :symlink, :roles => [:app] do
#     run "mkdir -p #{shared_path}/tmp/dragonfly && ln -nfs #{shared_path}/tmp/dragonfly #{release_path}/tmp/dragonfly"
#   end
# end
# after 'deploy:update_code', 'dragonfly:symlink'