#
# Cookbook:: postgres
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
file '/tmp/index.php' do
    content '<html>This is a placeholder for the home page.</html>'
    mode '0755'
end

file '/tmp/index.ph' do
    content '<html>he home page.</html>'
    mode '0755'
end

yum_repository 'postgres_repo' do
    description 'OurCo yum repository'
    baseurl 'https://yum.postgresql.org/13/redhat/rhel-7-x86_64'
    gpgkey 'https://apt.postgresql.org/pub/repos/yum/RPM-GPG-KEY-PGDG-13'
    action :create
end

yum_package 'postgresql13-server' do
    action :install
end

yum_package 'mc' do
    action :install
end

execute 'start_bazy' do
    command 'sudo /usr/pgsql-13/bin/postgresql-13-setup initdb'
    only_if { ::Dir.empty?('/var/lib/pgsql/13/data') }
end

service 'postgresql-13' do
    action :start
end
