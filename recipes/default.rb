
include_recipe "bootstrap::hostname"
include_recipe "bootstrap::users"
include_recipe "bootstrap::auto-upgrades"
include_recipe "bootstrap::extra-packages"

# include_recipe "bootstrap::logging"
# include_recipe "bootstrap::base"
