# Enable security upgrades by default

service "cron" do
  supports :restart => true, :reload => true
  action :enable
end

# Enable unattened upgrades
package "unattended-upgrades"

# Add my config to perform security upgrades automatically
template "/etc/apt/apt.conf.d/20auto-upgrades" do
  source "apt-periodic.erb"
  mode 0644
  notifies :reload, "service[cron]", :delayed
end
