hostname = 'frig'

# Need a service, to know how to restart it
service 'hostname' do
  supports :restart => true
  action :enable
end

# Ensure hostname is set correctly
file '/etc/hostname' do
  content "#{hostname}\n"
  notifies :restart, "service[hostname]", :immediate
end

# This isnt neccesary with ubntu 14 anymore?
#
# fqdn goes first, then aliases
# file '/etc/hosts' do
#   content "127.0.0.1 #{hostname} localhost \n"
#   notifies :restart, "service[hostname]", :immediate
# end
