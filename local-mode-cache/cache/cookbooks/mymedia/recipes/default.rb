#
# Cookbook Name:: mymedia
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

docker_service 'default' do
  action [:create, :start]
end

node[:images][:names].each do |image|
  docker_image image do
    action :pull
  end
end

