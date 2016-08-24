#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
    version  "2.2.15-54.el6.centos"
   action :install
end
cookbook_file "/var/www/html/index.html" do
    path   "/var/www/html/index.html"
    source "index.html"
    owner "root"
    group "root"
    mode  "0777" 
    action :create
end
directory "/tmp/a/b" do
     owner "root"
     group "root"
     mode "0644"
     recursive true
end
["/tmp/x","/tmp/y"].each do |dir|
directory dir do
      owner "root"
      group "root"
      mode "0644"
end
end
