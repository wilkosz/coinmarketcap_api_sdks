=begin
#Coinmarketcap API Swagger Implementation

#Define coinmarketcap's api in swagger 2.0 openapi standard

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'spec_helper'
require 'json'

# Unit tests for CoinmarketcapClient::DefaultApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @instance = CoinmarketcapClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@instance).to be_instance_of(CoinmarketcapClient::DefaultApi)
    end
  end

  # unit tests for cryptocurrency_info_get
  # Get metadata
  # Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id One or more comma-separated CoinMarketCap cryptocurrency IDs. Example \&quot;1,2\&quot;
  # @option opts [String] :symbol Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required.
  # @return [InlineResponse2006]
  describe 'cryptocurrency_info_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cryptocurrency_listings_historical_get
  # List all cryptocurrencies (historical)
  # Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :timestamp Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for.
  # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
  # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
  # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object.
  # @option opts [String] :sort Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by.
  # @option opts [String] :sort_dir Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
  # @option opts [String] :cryptocurrency_type Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
  # @return [InlineResponse2007]
  describe 'cryptocurrency_listings_historical_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cryptocurrency_listings_latest_get
  # List all cryptocurrencies (latest)
  # Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
  # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
  # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object.
  # @option opts [String] :sort Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by.
  # @option opts [String] :sort_dir Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort.
  # @option opts [String] :cryptocurrency_type Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include.
  # @return [InlineResponse2007]
  describe 'cryptocurrency_listings_latest_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cryptocurrency_map_get
  # Get CoinMarketCap ID map
  # Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :listing_status Only active coins are returned by default. Pass &#39;inactive&#39; to get a list of coins that are no longer active.
  # @option opts [Integer] :start Optionally offset the start (1-based index) of the paginated list of items to return.
  # @option opts [Integer] :limit Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size.
  # @option opts [String] :symbol Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored.
  # @return [InlineResponse2005]
  describe 'cryptocurrency_map_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for global_metrics_quotes_historical_get
  # List all cryptocurrencies (latest)
  # Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :time_start Timestamp (Unix or ISO 8601) to start returning quotes for. Optional, if not passed, we&#39;ll return quotes calculated in reverse from \&quot;time_end\&quot;.
  # @option opts [String] :time_end Timestamp (Unix or ISO 8601) to stop returning quotes for (inclusive). Optional, if not passed, we&#39;ll default to the current time. If no \&quot;time_start\&quot; is passed, we return quotes in reverse order starting from this time.
  # @option opts [Integer] :count The number of interval periods to return results for. Optional, required if both \&quot;time_start\&quot; and \&quot;time_end\&quot; aren&#39;t supplied. The default is 10 items. The current query limit is 10000.
  # @option opts [String] :interval Valid values \&quot;yearly\&quot; \&quot;monthly\&quot; \&quot;weekly\&quot; \&quot;daily\&quot; \&quot;hourly\&quot; \&quot;5m\&quot; \&quot;10m\&quot; \&quot;15m\&quot; \&quot;30m\&quot; \&quot;45m\&quot; \&quot;1h\&quot; \&quot;2h\&quot; \&quot;3h\&quot; \&quot;6h\&quot; \&quot;12h\&quot; \&quot;24h\&quot; \&quot;1d\&quot; \&quot;2d\&quot; \&quot;3d\&quot; \&quot;7d\&quot; \&quot;14d\&quot; \&quot;15d\&quot; \&quot;30d\&quot; \&quot;60d\&quot; \&quot;90d\&quot; \&quot;365d\&quot;   Interval of time to return data points for. See details in endpoint description.
  # @option opts [String] :convert_id One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2
  # @option opts [String] :convert By default market quotes are returned in USD. Optionally calculate market quotes in up to 3 other fiat currencies or cryptocurrencies.
  # @return [InlineResponse2009]
  describe 'global_metrics_quotes_historical_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for global_metrics_quotes_latest_get
  # Get aggregate market metrics (latest)
  # Get the latest quote of aggregate market metrics. Use the \&quot;convert\&quot; option to return market values in multiple fiat and cryptocurrency conversions in the same call.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :convert_id One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2
  # @option opts [String] :convert Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object.
  # @return [InlineResponse2008]
  describe 'global_metrics_quotes_latest_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
