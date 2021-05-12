control 'Linux instance check' do
    title 'Tanium Service Check'
    desc 'Tanium service should be running.'
    impact 0.9
    require 'rbconfig'
    is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
    if ! is_windows
      describe service(taniumclient)) do
        it { should installed }
        it { should be_enabled }
        it { should be_running}
      end
    end
  end