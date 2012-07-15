namespace :sync do
  def echo_and_run(command)
    puts command
    system command
  end

  desc "Copy the production database into this local installation"
  task :production => [:environment] do
    db_host = "tt.craigambrose.com"
    db_config = YAML.load_file('config/database.yml')[Rails.env]
    mysql_params = "-u #{db_config["username"]}"
    mysql_params += " -h #{db_config["host"]}" if db_config["host"]
    mysql_params += " -p#{db_config["password"]}" if db_config["password"]
    mysql_params += " #{db_config["database"]}"

    # echo_and_run "ssh atamai@#{db_host} \"./dump_atamai_refinery.sh\""
    # echo_and_run "rsync -az --progress atamai@#{db_host}:~/dump.sql ./tmp/production_data.sql"
    # echo_and_run "rsync -az --progress atamai@#{db_host}:~/public_html/atamai_refinery/shared/system/* ./public/system/"
    echo_and_run "mysql #{mysql_params} < ./tmp/production_data.sql"
  end
end
