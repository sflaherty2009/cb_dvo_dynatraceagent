#
# Cookbook:: cb_dvo_dynatraceAgent
# Recipe:: default
#
# Copyright (c) 2018 Trek Bikes, Matthew Oleksowicz, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'cb_dvo_dynatraceAgent::linux'
when 'windows'
  include_recipe 'cb_dvo_dynatraceAgent::windows'
else
  raise "no #{node['os']} support"
end
