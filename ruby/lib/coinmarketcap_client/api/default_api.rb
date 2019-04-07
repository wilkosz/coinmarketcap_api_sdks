=begin
#Coinmarketcap API Swagger Implementation

#Define coinmarketcap's api in swagger 2.0 openapi standard

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module CoinmarketcapAPI
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get metadata
    # Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id One or more comma-separated CoinMarketCap cryptocurrency IDs. Example: \&quot;1,2\&quot;
    # @option opts [String] :symbol Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required.
    # @return [InlineResponse2004]
    def cryptocurrency_info_get(opts = {})
      data, _status_code, _headers = cryptocurrency_info_get_with_http_info(opts)
      data
    end

    # Get metadata
    # Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id One or more comma-separated CoinMarketCap cryptocurrency IDs. Example: \&quot;1,2\&quot;
    # @option opts [String] :symbol Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required.
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def cryptocurrency_info_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.cryptocurrency_info_get ...'
      end
      # resource path
      local_var_path = '/cryptocurrency/info'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'symbol'] = opts[:'symbol'] if !opts[:'symbol'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2004')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#cryptocurrency_info_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all cryptocurrencies (historical)
    # Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :timestamp Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for.
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return. (default to 1)
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. (default to 100)
    # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. (default to USD)
    # @option opts [String] :sort Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. (default to market_cap)
    # @option opts [String] :sort_dir Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
    # @option opts [String] :cryptocurrency_type Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
    # @return [InlineResponse2005]
    def cryptocurrency_listings_historical_get(opts = {})
      data, _status_code, _headers = cryptocurrency_listings_historical_get_with_http_info(opts)
      data
    end

    # List all cryptocurrencies (historical)
    # Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :timestamp Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for.
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
    # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object.
    # @option opts [String] :sort Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by.
    # @option opts [String] :sort_dir Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
    # @option opts [String] :cryptocurrency_type Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
    # @return [Array<(InlineResponse2005, Fixnum, Hash)>] InlineResponse2005 data, response status code and response headers
    def cryptocurrency_listings_historical_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.cryptocurrency_listings_historical_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'start'].nil? && opts[:'start'] < 1
        fail ArgumentError, 'invalid value for "opts[:"start"]" when calling DefaultApi.cryptocurrency_listings_historical_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_listings_historical_get, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_listings_historical_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cryptocurrency/listings/historical'

      # query parameters
      query_params = {}
      query_params[:'timestamp'] = opts[:'timestamp'] if !opts[:'timestamp'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'convert'] = opts[:'convert'] if !opts[:'convert'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'cryptocurrency_type'] = opts[:'cryptocurrency_type'] if !opts[:'cryptocurrency_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2005')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#cryptocurrency_listings_historical_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all cryptocurrencies (latest)
    # Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return. (default to 1)
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. (default to 100)
    # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. (default to USD)
    # @option opts [String] :sort Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. (default to market_cap)
    # @option opts [String] :sort_dir Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
    # @option opts [String] :cryptocurrency_type Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
    # @return [InlineResponse2005]
    def cryptocurrency_listings_latest_get(opts = {})
      data, _status_code, _headers = cryptocurrency_listings_latest_get_with_http_info(opts)
      data
    end

    # List all cryptocurrencies (latest)
    # Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
    # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object.
    # @option opts [String] :sort Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by.
    # @option opts [String] :sort_dir Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
    # @option opts [String] :cryptocurrency_type Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
    # @return [Array<(InlineResponse2005, Fixnum, Hash)>] InlineResponse2005 data, response status code and response headers
    def cryptocurrency_listings_latest_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.cryptocurrency_listings_latest_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'start'].nil? && opts[:'start'] < 1
        fail ArgumentError, 'invalid value for "opts[:"start"]" when calling DefaultApi.cryptocurrency_listings_latest_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_listings_latest_get, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_listings_latest_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cryptocurrency/listings/latest'

      # query parameters
      query_params = {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'convert'] = opts[:'convert'] if !opts[:'convert'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'cryptocurrency_type'] = opts[:'cryptocurrency_type'] if !opts[:'cryptocurrency_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2005')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#cryptocurrency_listings_latest_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get CoinMarketCap ID map
    # Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :listing_status Only active coins are returned by default. Pass &#39;inactive&#39; to get a list of coins that are no longer active. (default to active)
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return. (default to 1)
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
    # @option opts [String] :symbol Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored.
    # @return [InlineResponse2003]
    def cryptocurrency_map_get(opts = {})
      data, _status_code, _headers = cryptocurrency_map_get_with_http_info(opts)
      data
    end

    # Get CoinMarketCap ID map
    # Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :listing_status Only active coins are returned by default. Pass &#39;inactive&#39; to get a list of coins that are no longer active.
    # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
    # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
    # @option opts [String] :symbol Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored.
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def cryptocurrency_map_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.cryptocurrency_map_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'start'].nil? && opts[:'start'] < 1
        fail ArgumentError, 'invalid value for "opts[:"start"]" when calling DefaultApi.cryptocurrency_map_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_map_get, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.cryptocurrency_map_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cryptocurrency/map'

      # query parameters
      query_params = {}
      query_params[:'listing_status'] = opts[:'listing_status'] if !opts[:'listing_status'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'symbol'] = opts[:'symbol'] if !opts[:'symbol'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#cryptocurrency_map_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end