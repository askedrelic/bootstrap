require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('rsyslog') do
  it { should be_installed }
end

describe process("rsyslogd") do
  it { should be_running }
end

# Repeating msgs should be disabled, overriden in default attributes
describe file('/etc/rsyslog.conf') do
  its(:content) { should match /RepeatedMsgReduction off/ }
end
