#
# Cookbook:: cb_dvo_dynatraceagent
# Recipe:: default
#
# Copyright (c) 2018 example , Matthew Oleksowicz, All Rights Reserved.

case node['os']
when 'linux'
  include_recipe 'cb_dvo_dynatraceagent::linux'
when 'windows'
  include_recipe 'cb_dvo_dynatraceagent::windows'
else
  raise "no #{node['os']} support"
end
