# CoinmarketcapClient::DefaultApi

All URIs are relative to *https://pro-api.coinmarketcap.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cryptocurrency_info_get**](DefaultApi.md#cryptocurrency_info_get) | **GET** /cryptocurrency/info | Get metadata
[**cryptocurrency_listings_historical_get**](DefaultApi.md#cryptocurrency_listings_historical_get) | **GET** /cryptocurrency/listings/historical | List all cryptocurrencies (historical)
[**cryptocurrency_listings_latest_get**](DefaultApi.md#cryptocurrency_listings_latest_get) | **GET** /cryptocurrency/listings/latest | List all cryptocurrencies (latest)
[**cryptocurrency_map_get**](DefaultApi.md#cryptocurrency_map_get) | **GET** /cryptocurrency/map | Get CoinMarketCap ID map
[**global_metrics_quotes_historical_get**](DefaultApi.md#global_metrics_quotes_historical_get) | **GET** /global-metrics/quotes/historical | List all cryptocurrencies (latest)
[**global_metrics_quotes_latest_get**](DefaultApi.md#global_metrics_quotes_latest_get) | **GET** /global-metrics/quotes/latest | Get aggregate market metrics (latest)


# **cryptocurrency_info_get**
> InlineResponse2006 cryptocurrency_info_get(opts)

Get metadata

Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  id: 'id_example', # String | One or more comma-separated CoinMarketCap cryptocurrency IDs. Example \"1,2\"
  symbol: 'symbol_example' # String | Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \"BTC,ETH\". At least one \"id\" or \"symbol\" is required.
}

begin
  #Get metadata
  result = api_instance.cryptocurrency_info_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_info_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| One or more comma-separated CoinMarketCap cryptocurrency IDs. Example \&quot;1,2\&quot; | [optional] 
 **symbol** | **String**| Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_listings_historical_get**
> InlineResponse2007 cryptocurrency_listings_historical_get(opts)

List all cryptocurrencies (historical)

Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  timestamp: 'timestamp_example', # String | Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for.
  start: 1, # Integer | Optionally offset the start (1-based index) of the paginated list of items to return.
  limit: 100, # Integer | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size.
  convert: 'USD', # String | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object.
  sort: 'market_cap', # String | Valid values `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by.
  sort_dir: 'sort_dir_example', # String | Valid values `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort.
  cryptocurrency_type: 'cryptocurrency_type_example' # String | Valid values `all` `coins` `tokens` The type of cryptocurrency to include.
}

begin
  #List all cryptocurrencies (historical)
  result = api_instance.cryptocurrency_listings_historical_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_listings_historical_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **String**| Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for. | [optional] 
 **start** | **Integer**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **Integer**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] [default to 100]
 **convert** | **String**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] [default to USD]
 **sort** | **String**| Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **String**| Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **String**| Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_listings_latest_get**
> InlineResponse2007 cryptocurrency_listings_latest_get(opts)

List all cryptocurrencies (latest)

Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  start: 1, # Integer | Optionally offset the start (1-based index) of the paginated list of items to return.
  limit: 100, # Integer | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size.
  convert: 'USD', # String | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object.
  sort: 'market_cap', # String | Valid values `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by.
  sort_dir: 'sort_dir_example', # String | Valid values `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort.
  cryptocurrency_type: 'cryptocurrency_type_example' # String | Valid values `all` `coins` `tokens` The type of cryptocurrency to include.
}

begin
  #List all cryptocurrencies (latest)
  result = api_instance.cryptocurrency_listings_latest_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_listings_latest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **Integer**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] [default to 100]
 **convert** | **String**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] [default to USD]
 **sort** | **String**| Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **String**| Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **String**| Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_map_get**
> InlineResponse2005 cryptocurrency_map_get(opts)

Get CoinMarketCap ID map

Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  listing_status: 'active', # String | Only active coins are returned by default. Pass 'inactive' to get a list of coins that are no longer active.
  start: 1, # Integer | Optionally offset the start (1-based index) of the paginated list of items to return.
  limit: 56, # Integer | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size.
  symbol: 'symbol_example' # String | Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored.
}

begin
  #Get CoinMarketCap ID map
  result = api_instance.cryptocurrency_map_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_map_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listing_status** | **String**| Only active coins are returned by default. Pass &#39;inactive&#39; to get a list of coins that are no longer active. | [optional] [default to active]
 **start** | **Integer**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **Integer**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] 
 **symbol** | **String**| Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **global_metrics_quotes_historical_get**
> InlineResponse2009 global_metrics_quotes_historical_get(opts)

List all cryptocurrencies (latest)

Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  time_start: 'time_start_example', # String | Timestamp (Unix or ISO 8601) to start returning quotes for. Optional, if not passed, we'll return quotes calculated in reverse from \"time_end\".
  time_end: 'time_end_example', # String | Timestamp (Unix or ISO 8601) to stop returning quotes for (inclusive). Optional, if not passed, we'll default to the current time. If no \"time_start\" is passed, we return quotes in reverse order starting from this time.
  count: 10, # Integer | The number of interval periods to return results for. Optional, required if both \"time_start\" and \"time_end\" aren't supplied. The default is 10 items. The current query limit is 10000.
  interval: '1d', # String | Valid values \"yearly\" \"monthly\" \"weekly\" \"daily\" \"hourly\" \"5m\" \"10m\" \"15m\" \"30m\" \"45m\" \"1h\" \"2h\" \"3h\" \"6h\" \"12h\" \"24h\" \"1d\" \"2d\" \"3d\" \"7d\" \"14d\" \"15d\" \"30d\" \"60d\" \"90d\" \"365d\"   Interval of time to return data points for. See details in endpoint description.
  convert_id: 'convert_id_example', # String | One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2
  convert: 'convert_example' # String | By default market quotes are returned in USD. Optionally calculate market quotes in up to 3 other fiat currencies or cryptocurrencies.
}

begin
  #List all cryptocurrencies (latest)
  result = api_instance.global_metrics_quotes_historical_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->global_metrics_quotes_historical_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_start** | **String**| Timestamp (Unix or ISO 8601) to start returning quotes for. Optional, if not passed, we&#39;ll return quotes calculated in reverse from \&quot;time_end\&quot;. | [optional] 
 **time_end** | **String**| Timestamp (Unix or ISO 8601) to stop returning quotes for (inclusive). Optional, if not passed, we&#39;ll default to the current time. If no \&quot;time_start\&quot; is passed, we return quotes in reverse order starting from this time. | [optional] 
 **count** | **Integer**| The number of interval periods to return results for. Optional, required if both \&quot;time_start\&quot; and \&quot;time_end\&quot; aren&#39;t supplied. The default is 10 items. The current query limit is 10000. | [optional] [default to 10]
 **interval** | **String**| Valid values \&quot;yearly\&quot; \&quot;monthly\&quot; \&quot;weekly\&quot; \&quot;daily\&quot; \&quot;hourly\&quot; \&quot;5m\&quot; \&quot;10m\&quot; \&quot;15m\&quot; \&quot;30m\&quot; \&quot;45m\&quot; \&quot;1h\&quot; \&quot;2h\&quot; \&quot;3h\&quot; \&quot;6h\&quot; \&quot;12h\&quot; \&quot;24h\&quot; \&quot;1d\&quot; \&quot;2d\&quot; \&quot;3d\&quot; \&quot;7d\&quot; \&quot;14d\&quot; \&quot;15d\&quot; \&quot;30d\&quot; \&quot;60d\&quot; \&quot;90d\&quot; \&quot;365d\&quot;   Interval of time to return data points for. See details in endpoint description. | [optional] [default to 1d]
 **convert_id** | **String**| One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 | [optional] 
 **convert** | **String**| By default market quotes are returned in USD. Optionally calculate market quotes in up to 3 other fiat currencies or cryptocurrencies. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **global_metrics_quotes_latest_get**
> InlineResponse2008 global_metrics_quotes_latest_get(opts)

Get aggregate market metrics (latest)

Get the latest quote of aggregate market metrics. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapClient::DefaultApi.new

opts = { 
  convert_id: 'convert_id_example', # String | One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2
  convert: 'convert_example' # String | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object.
}

begin
  #Get aggregate market metrics (latest)
  result = api_instance.global_metrics_quotes_latest_get(opts)
  p result
rescue CoinmarketcapClient::ApiError => e
  puts "Exception when calling DefaultApi->global_metrics_quotes_latest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **convert_id** | **String**| One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 | [optional] 
 **convert** | **String**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



