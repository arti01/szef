#
# Cookbook:: postgres
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

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

directory '/var/lib/pgsql/13/data' do
    owner 'postgres'
    mode '0700'
    recursive true
end

execute 'init_bazy' do
    command 'sudo /usr/pgsql-13/bin/postgresql-13-setup initdb'
    only_if { ::Dir.empty?('/var/lib/pgsql/13/data') }
    notifies :run, 'execute[user_postgres]'
end

service 'postgresql-13' do
    action :start
end

execute 'user_postgres' do
    command 'psql -c "ALTER USER postgres password \'postgres\';"'
    user 'postgres'
    action :nothing
end

log 'soe udalo' do
    level :info
end

include_recipe 'postgres::testowa'