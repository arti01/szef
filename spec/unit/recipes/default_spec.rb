#
# Cookbook:: postgres
# Spec:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'postgres::default' do
  context 'zmiany hasla' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7').converge(described_recipe) }
    describe 'runs a execute with the default action' do
     it { is_expected.to install_yum_package('postgresql13-server') }
     it { is_expected.to run_execute('init_bazy') }
     #it { is_expected.to run_execute('user_postgres') }
    end
  end
end
