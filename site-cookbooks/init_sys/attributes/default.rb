node.set['rvm'] = {
  "default_ruby" => "ruby-2.1.6",
  "global_gems"  => [
    { 'name' => 'bundler', 'source' => "https://ruby.taobao.org" },
    { 'name' => 'rake', 'source' => "https://ruby.taobao.org" },
    { 'name' => 'rubygems-bundler', 'action'  => 'remove', 'source' => "https://ruby.taobao.org"  }
  ],
  "gems" => [
    { 'name' => 'nokogiri', 'source' => "https://ruby.taobao.org"  },
    { 'name' => 'rails', 'version' => '4.2.2', 'source' => "https://ruby.taobao.org" }
  ]
}

node.set['java'] = {
  "install_flavor" => "oracle",
  "jdk_version" => "7",
  "oracle" => {
    "accept_oracle_download_terms" => true
  }
}

node.set['rethinkdb']['version'] = '2.1.1'
