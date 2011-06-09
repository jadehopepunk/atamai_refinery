set :application, "atamai_refinery"
set :repository,  "git://github.com/craigambrose/atamai_refinery.git"

set :domain, "refinery.atamai.craigambrose.com"
role :web, domain
role :app, domain
role :db,  domain, :primary => true

set :scm, :git
set :rails_env, "production"
set :deploy_to, "/home/atamai/public_html/atamai_refinery"
set :user, 'atamai'
set :use_sudo, false
set :rake, 'bundle exec rake'

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:update_code" do
  link_from_shared_to_current('config')
end
after "deploy", "deploy:cleanup"
after "deploy:migrations", "deploy:cleanup"


def link_from_shared_to_current(path, dest_path = path)
  src_path = "#{shared_path}/#{path}"
  dst_path = "#{release_path}/#{dest_path}"
  run "for f in `ls #{src_path}/` ; do ln -nsf #{src_path}/$f #{dst_path}/$f ; done"
end

after "deploy:update_code", "deploy:bundle_install"

namespace :deploy do
  desc "run 'bundle install' to install Bundler's packaged gems for the current deploy"
  task :bundle_install, :roles => :app do
    run "cd #{release_path} && bundle install --deployment"
  end
end

namespace :dragonfly do
  desc "Symlink the Rack::Cache files"
  task :symlink, :roles => [:app] do
    run "mkdir -p #{shared_path}/tmp/dragonfly && ln -nfs #{shared_path}/tmp/dragonfly #{release_path}/tmp/dragonfly"
  end
end
after 'deploy:update_code', 'dragonfly:symlink'