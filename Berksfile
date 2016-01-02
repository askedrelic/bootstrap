source "https://supermarket.chef.io"

metadata

cookbook 'apt'
cookbook 'build-essential'
cookbook 'ntp'
cookbook 'python'
cookbook 'cron'
cookbook 'sysctl'
cookbook 'sudo'
cookbook 'ssh_known_hosts'
cookbook 'rsyslog'
cookbook 'fail2ban'

# cookbook 'chef-user'

# set default locale to en_US.utf8
# forked repo that is still maintained
cookbook 'locales',
  :git => 'https://github.com/redguide/locales'

# cookbook with useful commands for modifying config files
cookbook 'patch',
  git: 'https://github.com/jenssegers/chef-patch'

# logging via papertrail
cookbook 'papertrail',
  git: 'https://github.com/librato/papertrail-cookbook'

cookbook 'timezone-ii',
  git: 'https://github.com/L2G/timezone-ii'
