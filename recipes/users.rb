# reguired by chef for managing passwords
gem_package "ruby-shadow"

# I should have a user account, with my default public key available
# But password mgmt should be disabled, to allow me to change it after the fact
user_account 'askedrelic' do
  manage_home false
  ssh_keygen false
  ssh_keys ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDB1EoMGeT6Taj2+6rEfhD2Eb9yP8H2zySNDdB+A4wGZ8WgI3XIr+lGMm63jpNz1UJrolNCM4qoE2KzR3NEoH+lkSh8QjhJ3Gd2bRPY53aOI9RtnztiqbOTB/MgbZkoMi5OEUu/dazrDFD6UNAoppiQ+AlzySQEqrMOQA+yoOg+At2VymNBuAKUI4VPEMzCUVim9kuMCMRZ76UL7RM3U0ezHfNKgcwpnjRH7Rg68FgWkosD9nspeo3RrknSg4HUResaqnDzL9NRXw6YVrzRCAEr+LK8dXpEl+Ic3zVk78LyEBUeaVf4ttjBD+3joRsRmERGaUf81zyxyp06GmbzoQNh mbp-2016"]
end

# TODO setup my homedir
# git '/home/askedrelic/.dotfiles' do
#    repository 'git@github.com:askedrelic/dotfiles.git'
#    revision branch_name
#    action :sync
#    user 'askedrelic'
#    group 'askedrelic'
# end

group "sudo" do
  action :modify
  members "askedrelic"
  append true
end
