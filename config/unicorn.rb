# config/unicorn.rb
# Set the working application directory
# working_directory '/path/to/your/app'

working_directory '/var/www/hikari_abc'

# Unicorn PID file location
# pid '/path/to/pids/unicorn.pid'
pid '/var/www/hikari_abc/tmp/pids/unicorn.pid'

# Path to logs
# stderr_path '/path/to/log/unicorn.log'
# stdout_path '/path/to/log/unicorn.log'

preload_app true

# Unicorn socket
# listen '/tmp/unicorn.[application name].sock'

#listen '/run/unicorn.hikari_abc.sock'
listen '/var/www/hikari_abc/tmp/sockets/.unicorn.sock'
#listen 8080

# Number of processes
# worker_processes 4

worker_processes 2

# Time-out
timeout 15


before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end

stderr_path '/var/www/hikari_abc/log/unicorn.log'
stdout_path '/var/www/hikari_abc/log/unicorn.log'
