username, groupname, home_dir = user_vars

group groupname

user username do
  shell '/usr/bin/fish'
  group groupname
  home home_dir
  manage_home true
end

directory "#{home_dir}/.config"do
  user username
  group groupname
end

directory "#{home_dir}/dev" do
  user username
  group groupname
end

package 'git'
package 'rxvt-unicode'
package 'tmux'
package 'fonts-inconsolata'
package 'htop'
package 'lynx'

# Required for rvm
package 'gawk'
package 'libgmp-dev'

execute 'default-urxvt' do
  command 'update-alternatives --set x-terminal-emulator /usr/bin/urxvt'
end

link "#{home_dir}/workspace" do
  to '/mnt/workspace'
end

# Add the user to sudoers
sudo username do
  user username
  commands ['ALL']
end
