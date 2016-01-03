
# TODO make this is a specific recipe for each machine...
# include_recipe "bootstrap::hostname"

# setup github as trusted by default
ssh_known_hosts_entry 'github.com'

include_recipe "bootstrap::users"
include_recipe "bootstrap::auto-upgrades"
include_recipe "bootstrap::extra-packages"

# include_recipe "bootstrap::logging"
# include_recipe "bootstrap::base"
