require 'serverspec'

# Required by serverspec
set :backend, :exec

# SSH should be installed
describe package('openssh-client') do
  it { should be_installed }
end
describe package('openssh-server') do
  it { should be_installed }
end

# SSH should be running
describe process("sshd") do
  it { should be_running }
end

# TODO cant get this working
# describe service("sshd") do
#   it { should be_running }
# end

# SSH should be open on 22 for ipv4 and ipv6
describe port(22) do
  it { should be_listening.with('tcp') }
end
describe port(22) do
  it { should be_listening.with('tcp6') }
end
