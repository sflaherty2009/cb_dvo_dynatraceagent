#
# Cookbook:: cb_dvo_dynatraceagent
# Recipe:: windows
#
# Copyright (c) 2018 Trek Bikes, Ray Crawford, Matt Oleksowicz, All Rights Reserved.

windows_package 'Dynatrace OneAgent' do
  action :remove
  only_if { ::Win32::Service.exists?('Dynatrace OneAgent') }
  notifies :delete, 'directory[C:/Program Files (x86)/dynatrace]', :immediately
  notifies :delete, 'directory[C:/ProgramData/dynatrace]', :immediately
end

directory 'C:/Program Files (x86)/dynatrace' do
  recursive true
  action :nothing
end

directory 'C:/ProgramData/dynatrace' do
  recursive true
  action :nothing
end
