default['yum']['remi-debuginfo']['repositoryid'] = 'remi-debuginfo'
default['yum']['remi-debuginfo']['gpgkey'] = 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
default['yum']['remi-debuginfo']['gpgcheck'] = true
default['yum']['remi-debuginfo']['enabled'] = false
default['yum']['remi-debuginfo']['managed'] = false

case node['platform']
when 'fedora'
  default['yum']['remi-debuginfo']['baseurl'] = "http://rpms.remirepo.net/fedora/#{node['platform_version'].to_i}/debug-remi/$basearch/"
  default['yum']['remi-debuginfo']['description'] = "Remi's RPM repository for Fedora Linux #{node['platform_version'].to_i} - $basearch - debuginfo"
else
  case node['platform_version'].to_i
  when 5
    default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/5/debug-remi/$basearch/'
    default['yum']['remi-debuginfo']['description'] = "Remi's RPM repository for Enterprise Linux 5 - $basearch - debuginfo"
  when 6, 2013, 2014, 2015, 2016
    default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/6/debug-remi/$basearch/'
    default['yum']['remi-debuginfo']['description'] = "Remi's RPM repository for Enterprise Linux 6 - $basearch - debuginfo"
  when 7
    default['yum']['remi-debuginfo']['baseurl'] = 'http://rpms.remirepo.net/enterprise/7/debug-remi/$basearch/'
    default['yum']['remi-debuginfo']['description'] = "Remi's RPM repository for Enterprise Linux 7 - $basearch - debuginfo"
  end
end
