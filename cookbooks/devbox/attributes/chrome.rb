case node['platform']
when 'ubuntu'
  default['chrome']['extension']['install_dir'] = '/opt/google/chrome/extensions/'
when 'windows'
  default['chrome']['extension']['install_dir'] = "#{ENV['APPDATA']}/Mozilla/plugins"
else
  default['chrome']['extension']['install_dir'] = '/opt/google/chrome/extensions/'
end  