require 'spec_helper'

describe 'postgres::testowa' do
    context 'badanie serwisu' do
        let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7').converge(described_recipe) }
        it 'ddddddddd' do
            #expect(chef_run).to create_file('/tmp1/index.ppp')

            #expect(chef_run).to delete_file('/tmp1/index.pp1') 
            #is_expected.to delete_file('/tmp1/index.pp1') 
        end
        
        #it { is_expected.to create_file('/tmp1/index.pp1') }
        #it { is_expected.to create_file('/tmp1/index.ppp') }
        #it 'lala' do
        #    expect(chef_run).to_not yum_repository('postgres_repo')
            #expect(chef_run).to_not install_yum_package('postgresql13-server')
        #end
    end
end

describe '1 plus 1' do
    it 'equals 2' do
        a = 1
        b = 1
        sum = a + b
        expect(sum).to eq(2)
        expect(sum).not_to eq(3)
    end
end