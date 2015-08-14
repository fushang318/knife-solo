# knife-solo
chef solo cookbooks,把自己常用的 cookbook 备份进来（防止网络不好的时候用不了），并增加自己的 cookbook

# 备份包括
对 https://supermarket.chef.io/cookbooks-directory 社区以下 cookbook 进行了备份
```
ruby
git
java
go
nodejs
npm
python

elasticsearch
mongodb
mongodb3
mysql
rethinkdb
nginx
```

# 计划做的事情
增加一个名字叫做 autoconfig 的 cookbook ，在调用以上 cookbook 的基础上来进行自动化安装好一个开发环境
