#
# Cookbook:: cb_dvo_dynatraceAgent
# Recipe:: linux_uninstall
#
# Copyright (c) 2018 Trek Bikes, Ray Crawford, Matt Oleksowicz, All Rights Reserved.

bash 'Install Dynatrace Agent' do
  cwd '/opt/dynatrace/oneagent/agent'
  code <<-EOH
    /bin/sh ./uninstall.sh
    rm -rf /opt/dynatrace
    rm -rf /var/lib/dynatrace
    EOH
  only_if { ::File.directory?('/opt/dynatrace') }
end