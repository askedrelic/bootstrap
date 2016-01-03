# Enable repeating msgs for fail2ban; default is on for ubuntu
default['rsyslog']['repeated_msg_reduction'] = 'off'

# Fail2ban should use syslog; default is direct file logging
default['fail2ban']['logtarget'] = 'SYSLOG'

# Override default Fail2ban settings
default['fail2ban']['services'] = {
  'ssh' => {
    # ban after 1 attempt
    "maxretry" => "1",
    # default ban of 1 hour
    "bantime" => "3600",
  }
}
}
