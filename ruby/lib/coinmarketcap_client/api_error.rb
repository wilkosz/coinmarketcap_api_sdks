=begin
#Coinmarketcap API Swagger Implementation

#Define coinmarketcap's api in swagger 2.0 openapi standard

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

module CoinmarketcapClient
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end
  end
end
