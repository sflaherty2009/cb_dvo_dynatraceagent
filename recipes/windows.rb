#
# Cookbook:: cb_dvo_dynatraceAgent
# Recipe:: windows
#
# Copyright (c) 2018 Trek Bikes, Ray Crawford, Matt Oleksowicz, All Rights Reserved.

if node['dvo_user']['use'] =~ /\bsql\b/ && node.chef_environment == 'production'
  node.default['dvo_user']['dynatrace']['infra_only_windows'] = 'INFRA_ONLY=\"1\"'
end

remote_file node['dvo_user']['dynatrace']['windows_installer_archive'] do
  source node['dvo_user']['dynatrace']['windows_installer']
  path "#{Chef::Config[:file_cache_path]}/#{node['dvo_user']['dynatrace']['windows_installer_archive']}"
  sensitive true
  action :create
end

windows_zipfile "#{Chef::Config[:file_cache_path]}/dynatrace" do
  source "#{Chef::Config[:file_cache_path]}/#{node['dvo_user']['dynatrace']['windows_installer_archive']}"
  action :unzip
  not_if { ::File.directory?("#{Chef::Config[:file_cache_path]}/dynatrace") }
end

ruby_block 'Find Install File' do
  block do
    Dir.foreach("#{Chef::Config[:file_cache_path]}/dynatrace/") do |item|
      next if item == '.' || item == '..'
      if item.include?('.msi')
        node.run_state['installer'] = "#{Chef::Config[:file_cache_path]}/dynatrace/#{item}"
      end
    end
    Chef::Log.warn(node.run_state['installer'])
  end
  not_if { ::Win32::Service.exists?('Dynatrace OneAgent') }
end

windows_package 'Dynatrace OneAgent' do
  source lazy { node.run_state['installer'] }
  options %(SERVER=\"#{node['dvo_user']['dynatrace']['server']}\" TENANT=\"#{node['dvo_user']['dynatrace']['tenant']}\" TENANT_TOKEN=\"#{node['dvo_user']['dynatrace']['tenant_token']}\" #{node['dvo_user']['dynatrace']['infra_only_windows']})
  action :install
  not_if { ::Win32::Service.exists?('Dynatrace OneAgent') }
end
