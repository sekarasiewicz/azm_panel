set :password, ask('Server password:', nil)
server 'dgreen.pl', user: 'deployer', port: 22, password: fetch(:password), roles: %w{app web db}
