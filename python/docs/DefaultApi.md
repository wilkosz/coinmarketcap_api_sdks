# CmcClient.DefaultApi

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
> InlineResponse2006 cryptocurrency_info_get(id=id, symbol=symbol)

Get metadata

Returns all static metadata for one or more cryptocurrencies including name, symbol, logo, and its various registered URLs.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
id = 'id_example' # str | One or more comma-separated CoinMarketCap cryptocurrency IDs. Example \"1,2\" (optional)
symbol = 'symbol_example' # str | Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \"BTC,ETH\". At least one \"id\" or \"symbol\" is required. (optional)

try:
    # Get metadata
    api_response = api_instance.cryptocurrency_info_get(id=id, symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->cryptocurrency_info_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| One or more comma-separated CoinMarketCap cryptocurrency IDs. Example \&quot;1,2\&quot; | [optional] 
 **symbol** | **str**| Alternatively pass one or more comma-separated cryptocurrency symbols. Example: \&quot;BTC,ETH\&quot;. At least one \&quot;id\&quot; or \&quot;symbol\&quot; is required. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cryptocurrency_listings_historical_get**
> InlineResponse2007 cryptocurrency_listings_historical_get(timestamp=timestamp, start=start, limit=limit, convert=convert, sort=sort, sort_dir=sort_dir, cryptocurrency_type=cryptocurrency_type)

List all cryptocurrencies (historical)

Get a paginated list of all cryptocurrencies with market data for a given historical time. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
timestamp = 'timestamp_example' # str | Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for. (optional)
start = 1 # int | Optionally offset the start (1-based index) of the paginated list of items to return. (optional) (default to 1)
limit = 100 # int | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size. (optional) (default to 100)
convert = 'USD' # str | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object. (optional) (default to USD)
sort = 'market_cap' # str | Valid values `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by. (optional) (default to market_cap)
sort_dir = 'sort_dir_example' # str | Valid values `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort. (optional)
cryptocurrency_type = 'cryptocurrency_type_example' # str | Valid values `all` `coins` `tokens` The type of cryptocurrency to include. (optional)

try:
    # List all cryptocurrencies (historical)
    api_response = api_instance.cryptocurrency_listings_historical_get(timestamp=timestamp, start=start, limit=limit, convert=convert, sort=sort, sort_dir=sort_dir, cryptocurrency_type=cryptocurrency_type)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->cryptocurrency_listings_historical_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **str**| Timestamp (Unix or ISO 8601) to return historical cryptocurrency listings for. | [optional] 
 **start** | **int**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **int**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] [default to 100]
 **convert** | **str**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] [default to USD]
 **sort** | **str**| Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **str**| Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **str**| Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cryptocurrency_listings_latest_get**
> InlineResponse2007 cryptocurrency_listings_latest_get(start=start, limit=limit, convert=convert, sort=sort, sort_dir=sort_dir, cryptocurrency_type=cryptocurrency_type)

List all cryptocurrencies (latest)

Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
start = 1 # int | Optionally offset the start (1-based index) of the paginated list of items to return. (optional) (default to 1)
limit = 100 # int | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size. (optional) (default to 100)
convert = 'USD' # str | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object. (optional) (default to USD)
sort = 'market_cap' # str | Valid values `name` `symbol` `date_added` `market_cap` `price` `circulating_supply` `total_supply` `max_supply` `num_market_pairs` `volume_24h` `percent_change_1h` `percent_change_24h` `percent_change_7d`   What field to sort the list of cryptocurrencies by. (optional) (default to market_cap)
sort_dir = 'sort_dir_example' # str | Valid values `asc` `desc`. The direction in which to order cryptocurrencies against the specified sort. (optional)
cryptocurrency_type = 'cryptocurrency_type_example' # str | Valid values `all` `coins` `tokens` The type of cryptocurrency to include. (optional)

try:
    # List all cryptocurrencies (latest)
    api_response = api_instance.cryptocurrency_listings_latest_get(start=start, limit=limit, convert=convert, sort=sort, sort_dir=sort_dir, cryptocurrency_type=cryptocurrency_type)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->cryptocurrency_listings_latest_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **int**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] [default to 100]
 **convert** | **str**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] [default to USD]
 **sort** | **str**| Valid values &#x60;name&#x60; &#x60;symbol&#x60; &#x60;date_added&#x60; &#x60;market_cap&#x60; &#x60;price&#x60; &#x60;circulating_supply&#x60; &#x60;total_supply&#x60; &#x60;max_supply&#x60; &#x60;num_market_pairs&#x60; &#x60;volume_24h&#x60; &#x60;percent_change_1h&#x60; &#x60;percent_change_24h&#x60; &#x60;percent_change_7d&#x60;   What field to sort the list of cryptocurrencies by. | [optional] [default to market_cap]
 **sort_dir** | **str**| Valid values &#x60;asc&#x60; &#x60;desc&#x60;. The direction in which to order cryptocurrencies against the specified sort. | [optional] 
 **cryptocurrency_type** | **str**| Valid values &#x60;all&#x60; &#x60;coins&#x60; &#x60;tokens&#x60; The type of cryptocurrency to include. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cryptocurrency_map_get**
> InlineResponse2005 cryptocurrency_map_get(listing_status=listing_status, start=start, limit=limit, symbol=symbol)

Get CoinMarketCap ID map

Returns a paginated list of all cryptocurrencies by CoinMarketCap ID. We recommend using this convenience endpoint to lookup and utilize our unique cryptocurrency id across all endpoints as typical identifiers like ticker symbols can match multiple cryptocurrencies and change over time. As a convenience you may pass a comma-separated list of cryptocurrency symbols as symbol to filter this list to only those you require.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
listing_status = 'active' # str | Only active coins are returned by default. Pass 'inactive' to get a list of coins that are no longer active. (optional) (default to active)
start = 1 # int | Optionally offset the start (1-based index) of the paginated list of items to return. (optional) (default to 1)
limit = 56 # int | Optionally specify the number of results to return. Use this parameter and the \"start\" parameter to determine your own pagination size. (optional)
symbol = 'symbol_example' # str | Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored. (optional)

try:
    # Get CoinMarketCap ID map
    api_response = api_instance.cryptocurrency_map_get(listing_status=listing_status, start=start, limit=limit, symbol=symbol)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->cryptocurrency_map_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listing_status** | **str**| Only active coins are returned by default. Pass &#39;inactive&#39; to get a list of coins that are no longer active. | [optional] [default to active]
 **start** | **int**| Optionally offset the start (1-based index) of the paginated list of items to return. | [optional] [default to 1]
 **limit** | **int**| Optionally specify the number of results to return. Use this parameter and the \&quot;start\&quot; parameter to determine your own pagination size. | [optional] 
 **symbol** | **str**| Optionally pass a comma-separated list of cryptocurrency symbols to return CoinMarketCap IDs for. If this option is passed, other options will be ignored. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **global_metrics_quotes_historical_get**
> InlineResponse2009 global_metrics_quotes_historical_get(time_start=time_start, time_end=time_end, count=count, interval=interval, convert_id=convert_id, convert=convert)

List all cryptocurrencies (latest)

Get a paginated list of all cryptocurrencies with latest market data. You can configure this call to sort by market cap or another market ranking field. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
time_start = 'time_start_example' # str | Timestamp (Unix or ISO 8601) to start returning quotes for. Optional, if not passed, we'll return quotes calculated in reverse from \"time_end\". (optional)
time_end = 'time_end_example' # str | Timestamp (Unix or ISO 8601) to stop returning quotes for (inclusive). Optional, if not passed, we'll default to the current time. If no \"time_start\" is passed, we return quotes in reverse order starting from this time. (optional)
count = 10 # int | The number of interval periods to return results for. Optional, required if both \"time_start\" and \"time_end\" aren't supplied. The default is 10 items. The current query limit is 10000. (optional) (default to 10)
interval = '1d' # str | Valid values \"yearly\" \"monthly\" \"weekly\" \"daily\" \"hourly\" \"5m\" \"10m\" \"15m\" \"30m\" \"45m\" \"1h\" \"2h\" \"3h\" \"6h\" \"12h\" \"24h\" \"1d\" \"2d\" \"3d\" \"7d\" \"14d\" \"15d\" \"30d\" \"60d\" \"90d\" \"365d\"   Interval of time to return data points for. See details in endpoint description. (optional) (default to 1d)
convert_id = 'convert_id_example' # str | One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 (optional)
convert = 'convert_example' # str | By default market quotes are returned in USD. Optionally calculate market quotes in up to 3 other fiat currencies or cryptocurrencies. (optional)

try:
    # List all cryptocurrencies (latest)
    api_response = api_instance.global_metrics_quotes_historical_get(time_start=time_start, time_end=time_end, count=count, interval=interval, convert_id=convert_id, convert=convert)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->global_metrics_quotes_historical_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_start** | **str**| Timestamp (Unix or ISO 8601) to start returning quotes for. Optional, if not passed, we&#39;ll return quotes calculated in reverse from \&quot;time_end\&quot;. | [optional] 
 **time_end** | **str**| Timestamp (Unix or ISO 8601) to stop returning quotes for (inclusive). Optional, if not passed, we&#39;ll default to the current time. If no \&quot;time_start\&quot; is passed, we return quotes in reverse order starting from this time. | [optional] 
 **count** | **int**| The number of interval periods to return results for. Optional, required if both \&quot;time_start\&quot; and \&quot;time_end\&quot; aren&#39;t supplied. The default is 10 items. The current query limit is 10000. | [optional] [default to 10]
 **interval** | **str**| Valid values \&quot;yearly\&quot; \&quot;monthly\&quot; \&quot;weekly\&quot; \&quot;daily\&quot; \&quot;hourly\&quot; \&quot;5m\&quot; \&quot;10m\&quot; \&quot;15m\&quot; \&quot;30m\&quot; \&quot;45m\&quot; \&quot;1h\&quot; \&quot;2h\&quot; \&quot;3h\&quot; \&quot;6h\&quot; \&quot;12h\&quot; \&quot;24h\&quot; \&quot;1d\&quot; \&quot;2d\&quot; \&quot;3d\&quot; \&quot;7d\&quot; \&quot;14d\&quot; \&quot;15d\&quot; \&quot;30d\&quot; \&quot;60d\&quot; \&quot;90d\&quot; \&quot;365d\&quot;   Interval of time to return data points for. See details in endpoint description. | [optional] [default to 1d]
 **convert_id** | **str**| One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 | [optional] 
 **convert** | **str**| By default market quotes are returned in USD. Optionally calculate market quotes in up to 3 other fiat currencies or cryptocurrencies. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **global_metrics_quotes_latest_get**
> InlineResponse2008 global_metrics_quotes_latest_get(convert_id=convert_id, convert=convert)

Get aggregate market metrics (latest)

Get the latest quote of aggregate market metrics. Use the \"convert\" option to return market values in multiple fiat and cryptocurrency conversions in the same call.

### Example
```python
from __future__ import print_function
import time
import CmcClient
from CmcClient.rest import ApiException
from pprint import pprint

# Configure API key authorization: ApiKeyAuth
configuration = CmcClient.Configuration()
configuration.api_key['X-CMC_PRO_API_KEY'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-CMC_PRO_API_KEY'] = 'Bearer'

# create an instance of the API class
api_instance = CmcClient.DefaultApi(CmcClient.ApiClient(configuration))
convert_id = 'convert_id_example' # str | One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 (optional)
convert = 'convert_example' # str | Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \"quote\" object. (optional)

try:
    # Get aggregate market metrics (latest)
    api_response = api_instance.global_metrics_quotes_latest_get(convert_id=convert_id, convert=convert)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->global_metrics_quotes_latest_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **convert_id** | **str**| One or more comma-separated cryptocurrency CoinMarketCap IDs. Example 1,2 | [optional] 
 **convert** | **str**| Optionally calculate market quotes in up to 120 currencies at once by passing a comma-separated list of cryptocurrency or fiat currency symbols. Each additional convert option beyond the first requires an additional call credit. A list of supported fiat options can be found here. Each conversion is returned in its own \&quot;quote\&quot; object. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

