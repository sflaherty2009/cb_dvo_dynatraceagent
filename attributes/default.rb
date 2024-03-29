default['dvo_user']['dynatrace']['linux_installer_name'] = 'Dynatrace-OneAgent-Linux.sh'
default['dvo_user']['dynatrace']['windows_installer_archive'] = 'Dynatrace-OneAgent-Linux.zip'
default['dvo_user']['dynatrace']['infra_only_linux'] = 'INFRA_ONLY=0'
default['dvo_user']['dynatrace']['infra_only_windows'] = 'INFRA_ONLY="0"'

if node['dvo_user']['ALM_environment'].include?('prod')
  default['dvo_user']['dynatrace']['linux_installer'] = 'https://exf44419.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?Api-Token=qotvRmYJRNecrCzrSve1i&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['windows_installer'] = 'https://exf44419.live.dynatrace.com/api/v1/deployment/installer/agent/windows/default-unattended/latest?Api-Token=qotvRmYJRNecrCzrSve1i&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['server'] = 'https://exf44419.live.dynatrace.com:443'
  default['dvo_user']['dynatrace']['tenant'] = 'exf44419'
  default['dvo_user']['dynatrace']['tenant_token'] = 'T8GUIYFCSfUNptZf'
elsif node['dvo_user']['ALM_environment'].include?('test')
  default['dvo_user']['dynatrace']['linux_installer'] = 'https://iyo97691.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?Api-Token=pF9nfoHGTAe7_4blu5jIW&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['windows_installer'] = 'https://iyo97691.live.dynatrace.com/api/v1/deployment/installer/agent/windows/default-unattended/latest?Api-Token=pF9nfoHGTAe7_4blu5jIW&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['server'] = 'https://iyo97691.live.dynatrace.com:443'
  default['dvo_user']['dynatrace']['tenant'] = 'iyo97691'
  default['dvo_user']['dynatrace']['tenant_token'] = 'eMgjUy8lTyLUWqrH'
else
  default['dvo_user']['dynatrace']['linux_installer'] = 'https://zdr92756.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?Api-Token=VAFwIg8ATIaiGgyc0IupS&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['windows_installer'] = 'https://zdr92756.live.dynatrace.com/api/v1/deployment/installer/agent/windows/default-unattended/latest?Api-Token=VAFwIg8ATIaiGgyc0IupS&arch=x86&flavor=default'
  default['dvo_user']['dynatrace']['server'] = 'https://zdr92756.live.dynatrace.com:443'
  default['dvo_user']['dynatrace']['tenant'] = 'zdr92756'
  default['dvo_user']['dynatrace']['tenant_token'] = 'YoDsFhIdEWgSMXxS'
end
