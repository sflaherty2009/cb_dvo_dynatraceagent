#
# Cookbook:: cb_dvo_dynatraceagent
# Recipe:: linux
#
# Copyright (c) 2018 example , Ray Crawford, Matt Oleksowicz, All Rights Reserved.

directory '/opt/dynatrace'

remote_file "#{Chef::Config[:file_cache_path]}/Dynatrace-OneAgent-Linux.sh" do
  source node['dvo_user']['dynatrace']['linux_installer']
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

bash 'Install Dynatrace Agent' do
  cwd '/opt/dynatrace'
  code <<-EOH
    /bin/sh #{Chef::Config[:file_cache_path]}/Dynatrace-OneAgent-Linux.sh APP_LOG_CONTENT_ACCESS=1 #{node['dvo_user']['dynatrace']['infra_only_linux']}
    EOH
  not_if { ::File.directory?('/opt/dynatrace/oneagent') }
end
