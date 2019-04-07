# CoinmarketcapAPI::DefaultApi

All URIs are relative to *https://pro-api.coinmarketcap.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cryptocurrency_info_get**](DefaultApi.md#cryptocurrency_info_get) | **GET** /cryptocurrency/info | Get metadata
[**cryptocurrency_listings_historical_get**](DefaultApi.md#cryptocurrency_listings_historical_get) | **GET** /cryptocurrency/listings/historical | List all cryptocurrencies (historical)
[**cryptocurrency_listings_latest_get**](DefaultApi.md#cryptocurrency_listings_latest_get) | **GET** /cryptocurrency/listings/latest | List all cryptocurrencies (latest)
[**cryptocurrency_map_get**](DefaultApi.md#cryptocurrency_map_get) | **GET** /cryptocurrency/map | Get CoinMarketCap ID map


# **cryptocurrency_info_get**
> InlineResponse2004 cryptocurrency_info_get(opts)

Get metadata

Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapAPI.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapAPI::DefaultApi.new

opts = { 
  id: 'id_example', # String | One or more comma-separated CoinMarketCap cryptocurrency IDs. Example: \"1,2\"
  symbol: 'symbol_example' # String | Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \"BTC,ETH\". At least one \"id\" or \"symbol\" is required.
}

begin
  #Get metadata
  result = api_instance.cryptocurrency_info_get(opts)
  p result
rescue CoinmarketcapAPI::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_info_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| One or more comma-separated CoinMarketCap cryptocurrency IDs. Example: \&quot;1,2\&quot; | [optional] 
 **symbol** | **String**| Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_listings_historical_get**
> InlineResponse2005 cryptocurrency_listings_historical_get(opts)

List all cryptocurrencies (historical)

Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapAPI.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapAPI::DefaultApi.new

opts = { 
  timestamp: 'timestamp_example', # String | Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for.
  start: 1, # Integer | Optionally offset the start (1-based index) of the paginated list of items to return.
  limit: 100, # Integer | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size.
  convert: 'USD', # String | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object.
  sort: 'market_cap', # String | Valid values: `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by.
  sort_dir: 'sort_dir_example', # String | Valid values: `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort.
  cryptocurrency_type: 'cryptocurrency_type_example' # String | Valid values: `all` `coins` `tokens` The type of cryptocurrency to include.
}

begin
  #List all cryptocurrencies (historical)
  result = api_instance.cryptocurrency_listings_historical_get(opts)
  p result
rescue CoinmarketcapAPI::ApiError => e
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
 **sort** | **String**| Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **String**| Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **String**| Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_listings_latest_get**
> InlineResponse2005 cryptocurrency_listings_latest_get(opts)

List all cryptocurrencies (latest)

Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapAPI.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapAPI::DefaultApi.new

opts = { 
  start: 1, # Integer | Optionally offset the start (1-based index) of the paginated list of items to return.
  limit: 100, # Integer | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size.
  convert: 'USD', # String | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object.
  sort: 'market_cap', # String | Valid values: `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by.
  sort_dir: 'sort_dir_example', # String | Valid values: `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort.
  cryptocurrency_type: 'cryptocurrency_type_example' # String | Valid values: `all` `coins` `tokens` The type of cryptocurrency to include.
}

begin
  #List all cryptocurrencies (latest)
  result = api_instance.cryptocurrency_listings_latest_get(opts)
  p result
rescue CoinmarketcapAPI::ApiError => e
  puts "Exception when calling DefaultApi->cryptocurrency_listings_latest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **Integer**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] [default to 100]
 **convert** | **String**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] [default to USD]
 **sort** | **String**| Valid values: &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **String**| Valid values: &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **String**| Valid values: &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cryptocurrency_map_get**
> InlineResponse2003 cryptocurrency_map_get(opts)

Get CoinMarketCap ID map

Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.

### Example
```ruby
# load the gem
require 'coinmarketcap_client'
# setup authorization
CoinmarketcapAPI.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-CMC_PRO_API_KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'
end

api_instance = CoinmarketcapAPI::DefaultApi.new

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
rescue CoinmarketcapAPI::ApiError => e
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

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



