# Cleanup the logs from fail2ban, just to be clean...
file '/var/log/fail2ban.log' do
  action :delete
end
