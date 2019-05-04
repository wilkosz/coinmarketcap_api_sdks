=begin
#Coinmarketcap API Swagger Implementation

#Define coinmarketcap's api in swagger 2.0 openapi standard

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CoinmarketcapClient::InlineResponseDefault
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponseDefault' do
  before do
    # run before each test
    @instance = CoinmarketcapClient::InlineResponseDefault.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponseDefault' do
    it 'should create an instance of InlineResponseDefault' do
      expect(@instance).to be_instance_of(CoinmarketcapClient::InlineResponseDefault)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
