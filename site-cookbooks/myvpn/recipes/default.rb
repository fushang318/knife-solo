package "pptp-linux" do
  action :install
end

execute "创建 vpn" do
	action :run
  command "pptpsetup --create myvpn --server #{node["myvpn"]["host"]} --username #{node["myvpn"]["username"]} --password #{node["myvpn"]["password"]} --encrypt"
	cwd "/root"
end

template "/etc/ppp/ip-up.d/route-traffic" do
  source 'route-traffic.erb'
end

template "/etc/ppp/ip-down.d/disableroute" do
  source 'disableroute.erb'
end
