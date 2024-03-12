Vagrant.configure("2") do |config|
  config.vm.provider :docker do |docker, override|
    docker.image = "alvistack/httpd-2.4"
    docker.pull = true

    override.vm.synced_folder "./", "/vagrant"
  end
end
