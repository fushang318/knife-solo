action :run do
  execute "打开 vpn" do
  	action :run
    command "pon myvpn"
  	cwd "/root"
  end
end
