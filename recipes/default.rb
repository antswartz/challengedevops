#
# Cookbook Name:: apache
# Recipe:: apache for Dev Ops Challenge
#
# Copyright 2014, Anthony Swartz
#
# All rights reserved - Do Not Redistribute
#


service 'iptables' do
  action [ :stop ]
end



package 'httpd' do
  action :install
end

service 'httpd' do 
  action [ :enable, :start ] 
end


template '/etc/httpd/conf/httpd.conf' do
  owner 'root'
  group 'root'
  mode '644'
  source 'httpd.conf'
end

package 'php' do
  action :install
end

service 'httpd' do
  action [ :restart ]
end


package 'screen' do
  action :install
end

package 'ruby' do
  action :install
end

package 'curl' do
  action :install
end

package 'git' do
  action :install
end

package 'vim-enhanced' do
  action :install
end

#Calls the index file for Apache server

cookbook_file '/var/www/html/index.php' do 
  source 'index.php' 
  mode '0644' 
end 
