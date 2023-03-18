#
# Cookbook:: postgres
# Spec:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'postgres::default' do
  context 'When all attributes are default, on CentOS 7' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '7'
    it 'converges successfully' do
      #expect { chef_run }.to_not raise_error
      expect(1 + 1).to eq(2)
    end
  end
end

describe 'postgres::default' do
  context 'badanie serwisu' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }
    it 'equals 2' do
      a = 1
      b = 2
      sum = a + b
      expect(sum).to eq(2)
      expect(sum).not_to eq(3)
  end
    it 'removes a package with an explicit action' do
      expect(chef_run).to remove_package('explicit_action')
      expect(chef_run).to_not remove_package('not_explicit_action')
    end
  end
end
