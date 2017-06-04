# System configuration
include_recipe 'devbox::repositories'
include_recipe 'devbox::system'
include_recipe 'devbox::virtualbox'
include_recipe 'devbox::x'
include_recipe 'devbox::awesome'
include_recipe 'devbox::base16'

# Dev tools
include_recipe 'devbox::dev_tools'

# Application configuration
include_recipe 'chrome::default'
include_recipe 'devbox::chrome'
include_recipe 'devbox::firefox'
include_recipe 'devbox::fish'
include_recipe 'devbox::docker'
include_recipe 'devbox::nvm'
include_recipe 'devbox::rvm'
include_recipe 'devbox::ruby_gems'
include_recipe 'devbox::editor'
include_recipe 'devbox::golang'
include_recipe 'devbox::keepass'

# Install dotfiles after everything has been configured
include_recipe 'devbox::dotfiles'
