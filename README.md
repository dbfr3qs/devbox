Linux Dev Box
===================

Cookbook, Vagrantfile and packer template to create a development box.

Setup includes:
  - [Awesome](https://awesome.naquadah.org/)
  - [Fish](https://fishshell.com/)
  - [Vim](http://www.vim.org/) and a bunch of plugins
  - [Firefox](https://www.mozilla.org/en-US/firefox) with [Vimperator](http://www.vimperator.org/vimperator)
  - [Base16 colorscheme](https://github.com/chriskempson/base16)
  - [Rvm](https://rvm.io/) with Ruby 2.2.3 and 2.3.1
  - [Golang](https://golang.org/)
  - [Chrome](https://www.google.com/chrome/) with Adblock

Usage
=====

Easiest way to create a box is to use vagrant
```
vagrant plugin install vagrant-berkshelf
vagrant up
```