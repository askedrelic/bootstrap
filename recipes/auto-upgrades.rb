# Enable security upgrades by default

service "cron" do
  supports :restart => true, :reload => true
  action :enable
end

package "unattended-upgrades"
template "/etc/apt/apt.conf.d/10periodic" do
  source "apt-periodic.erb"
  mode 0644
  notifies :reload, "service[cron]", :delayed
end
