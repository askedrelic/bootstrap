require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('fail2ban') do
  it { should be_installed }
end

describe process("fail2ban-server") do
  it { should be_running }
end

# TODO cant get this working
# describe service("fail2ban") do
#   it { should be_running }
# end

describe file('/etc/fail2ban/fail2ban.conf') do
  its(:content) { should match /logtarget = SYSLOG/ }
end

# Assuming syslog was setup, this file shouldn't exist?
describe file ('/var/log/fail2ban.log') do
  it { should_not exist }
end
