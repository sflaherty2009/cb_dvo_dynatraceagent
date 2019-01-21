#
# Cookbook:: cb_dvo_dynatraceagent
# Recipe:: uninstall
#
# Copyright (c) 2018 Trek Bikes, Matthew Oleksowicz, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'cb_dvo_dynatraceagent::linux_uninstall'
when 'windows'
  include_recipe 'cb_dvo_dynatraceagent::windows_uninstall'
else
  raise "no #{node['os']} support"
end
