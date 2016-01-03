# Enable repeating msgs for fail2ban; default is on for ubuntu
default['rsyslog']['repeated_msg_reduction'] = 'off'

# Fail2ban should use syslog; default is direct file logging
default['fail2ban']['logtarget'] = 'SYSLOG'

# Fail2ban should ban on 2 failed SSH attempts; 6 default
default['fail2ban']['services'] = {
  'ssh' => {
    "enabled" => "true",
    "port" => "ssh",
    "filter" => "sshd",
    "maxretry" => "2"
  },
}
