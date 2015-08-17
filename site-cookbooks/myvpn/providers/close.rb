action :run do
  execute "关闭 vpn" do
  	action :run
    command "poff myvpn"
  	cwd "/root"
  end
end
