#
# Cookbook:: cb_dvo_dynatraceAgent
# Recipe:: uninstall
#
# Copyright (c) 2018 Trek Bikes, Matthew Oleksowicz, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'cb_dvo_dynatraceAgent::linux_uninstall'
when 'windows'
  include_recipe 'cb_dvo_dynatraceAgent::windows_uninstall'
else
  raise "no #{node['os']} support"
end
