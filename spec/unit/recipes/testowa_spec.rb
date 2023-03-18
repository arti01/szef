require 'spec_helper'

describe 'postgres::testowa' do
end

describe '1 plus 1' do
    it 'equals 2' do
        a = 1
        b = 2
        sum = a + b
        expect(sum).to eq(2)
        expect(sum).not_to eq(3)
    end
end