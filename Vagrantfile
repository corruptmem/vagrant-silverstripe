Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.forward_port 80, 51742

  config.vm.provision :chef_solo do |chef| 
    chef.json = {
      "mysql" => {
        "server_root_password" => "omega"
      }
    }
    
    chef.add_recipe "apt"
    chef.add_recipe "openssl"
    chef.add_recipe "php::package"
    chef.add_recipe "php::module_gd"
    chef.add_recipe "php::module_mysql"
    chef.add_recipe "mysql::server"
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_php5"
    chef.add_recipe "apache2::mod_rewrite"
    chef.add_recipe "apache2::mod_headers"
  end

  config.vm.provision :shell, :path => "config/provision.sh"
  
end
