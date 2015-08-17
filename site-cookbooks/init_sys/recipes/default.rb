# 安装 rvm ruby
include_recipe "rvm::system"

# 安装 git
include_recipe "git"

# 安装 nodejs npm
include_recipe "nodejs::npm"

# 安装 python
include_recipe "python"

# 安装 go
include_recipe "golang"

# 安装 java
include_recipe "java"

# 安装 nginx
include_recipe "nginx"

# 安装 mysql
mysql_service 'default' do
  port '3306'
  version '5.6'
  initial_root_password 'root'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

# 安装 elasticsearch
include_recipe "elasticsearch"

# 安装 mongodb
include_recipe "mongodb"

# 安装 rethinkdb
include_recipe "rethinkdb::package"
