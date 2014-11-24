#
# Cookbook Name:: apache
# Recipe:: apache for Dev Ops Challenge
#
# Copyright 2014, Anthony Swartz
#
# All rights reserved - Do Not Redistribute
#

package 'httpd' do
  action :install
end



service 'httpd' do 
  action [ :enable, :start ] 
end


cookbook_file '/var/www/html/index.html' do 
  source 'index.html' 
  mode '0644' 
end 