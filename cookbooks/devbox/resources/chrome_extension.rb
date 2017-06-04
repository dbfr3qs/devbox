resource_name :chrome_extension

property :id, String
property :install_dir, default: node['chrome']['extension']['install_dir']

default_action :install

action :install do
  directory install_dir do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end
  file_path = ::File.join(install_dir, "#{id}.json")
  file file_path do
    action :create
  end
  
  file file_path do
    content '{
      "external_update_url": "https://clients2.google.com/service/update2/crx"
      }'
    owner 'root'
    group 'root'
    mode 00666  
  end
end

action :remove do
  file_path = ::File.join(install_dir, "#{id}.json")

  file file_path do
    action :delete
  end
end