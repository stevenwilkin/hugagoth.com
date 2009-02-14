set :application, "hugagoth.com"
set :repository,  "https://subvolution.com/svn/#{application}/trunk"

set :deploy_to, "/var/www/#{application}"

set :use_sudo, false

role :app, "subvolution.com"
role :web, "subvolution.com"
role :db,  "subvolution.com", :primary => true

namespace :deploy do
	desc "Restart Application"
    task :restart, :roles => :app do
	    run "touch #{current_path}/tmp/restart.txt"
	end
end
	
after "deploy:update" do
	run "ln -s #{shared_path}/goths #{current_path}/public/images/goths"
end

