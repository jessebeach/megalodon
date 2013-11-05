#
# Cookbook Name:: megalodon
# Recipe:: misc
#

%w(autoconf automake coreutils bash-completion xz patchutils sqlite wget markdown ctags).each do |pkg|
  package pkg
end
