app_name = 'decopaint'
worker_processes 2

working_directory "/var/www/apps/#{app_name}/current"
shared_path = "/var/www/apps/#{app_name}/shared"

listen "/var/www/apps/#{app_name}/socket/.unicorn.sock", backlog: 64
listen 8080, tcp_nopush: true
timeout 30

pid "/var/www/apps/#{app_name}/run/unicorn.pid"

stderr_path "/var/www/apps/#{app_name}/log/unicorn.stderr.log"
stdout_path "/var/www/apps/#{app_name}/log/unicorn.stdout.log"

preload_app true
GC.respond_to?(:copy_on_write_friendly=) and
  GC.copy_on_write_friendly = true

check_client_connection false

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
