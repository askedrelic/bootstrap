source "https://supermarket.chef.io"

metadata

cookbook 'apt'
cookbook 'build-essential'
cookbook 'ntp'
cookbook 'cron'
cookbook 'sysctl'
cookbook 'sudo'
cookbook 'ssh_known_hosts'
cookbook 'rsyslog'
cookbook 'fail2ban'

# TODO switch to poise-python
# https://github.com/poise/poise-python
cookbook 'python'

# cookbook 'chef-user'

# Set default locale to en_US.utf8.
# Forked repo that is still maintained.
cookbook 'locales',
  git: 'https://github.com/redguide/locales'

# Set datetime to UTC default.
cookbook 'timezone-ii',
  git: 'https://github.com/L2G/timezone-ii',
  ref: '28c9e49c58c534e798cf01a77a9373c4c54f4587'

# Util cookbook, useful commands for modifying config files
cookbook 'patch',
  git: 'https://github.com/jenssegers/chef-patch'

# Add papertrail logging to rsyslog
cookbook 'papertrail',
  git: 'https://github.com/librato/papertrail-cookbook'

