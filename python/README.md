# cmc-client
Define coinmarketcap's api in swagger 2.0 openapi standard

This Python package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.PythonClientCodegen

## Requirements.

Python 2.7 and 3.4+

## Installation & Usage
### pip install

If the python package is hosted on Github, you can install directly from Github

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import CmcClient 
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import CmcClient
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://pro-api.coinmarketcap.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**cryptocurrency_info_get**](docs/DefaultApi.md#cryptocurrency_info_get) | **GET** /cryptocurrency/info | Get metadata
*DefaultApi* | [**cryptocurrency_listings_historical_get**](docs/DefaultApi.md#cryptocurrency_listings_historical_get) | **GET** /cryptocurrency/listings/historical | List all cryptocurrencies (historical)
*DefaultApi* | [**cryptocurrency_listings_latest_get**](docs/DefaultApi.md#cryptocurrency_listings_latest_get) | **GET** /cryptocurrency/listings/latest | List all cryptocurrencies (latest)
*DefaultApi* | [**cryptocurrency_map_get**](docs/DefaultApi.md#cryptocurrency_map_get) | **GET** /cryptocurrency/map | Get CoinMarketCap ID map
*DefaultApi* | [**global_metrics_quotes_historical_get**](docs/DefaultApi.md#global_metrics_quotes_historical_get) | **GET** /global-metrics/quotes/historical | List all cryptocurrencies (latest)
*DefaultApi* | [**global_metrics_quotes_latest_get**](docs/DefaultApi.md#global_metrics_quotes_latest_get) | **GET** /global-metrics/quotes/latest | Get aggregate market metrics (latest)


## Documentation For Models

 - [CryptocurrencyInfo](docs/CryptocurrencyInfo.md)
 - [CryptocurrencyInfoUrls](docs/CryptocurrencyInfoUrls.md)
 - [CryptocurrencyListings](docs/CryptocurrencyListings.md)
 - [CryptocurrencyMap](docs/CryptocurrencyMap.md)
 - [GlobalMetricsHistoricalQuote](docs/GlobalMetricsHistoricalQuote.md)
 - [GlobalMetricsQuote](docs/GlobalMetricsQuote.md)
 - [GlobalMetricsQuotesHistorical](docs/GlobalMetricsQuotesHistorical.md)
 - [GlobalMetricsQuotesLatest](docs/GlobalMetricsQuotesLatest.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2003](docs/InlineResponse2003.md)
 - [InlineResponse2004](docs/InlineResponse2004.md)
 - [InlineResponse2004Data](docs/InlineResponse2004Data.md)
 - [InlineResponse2005](docs/InlineResponse2005.md)
 - [InlineResponse2006](docs/InlineResponse2006.md)
 - [InlineResponse2007](docs/InlineResponse2007.md)
 - [InlineResponse2008](docs/InlineResponse2008.md)
 - [InlineResponse2009](docs/InlineResponse2009.md)
 - [InlineResponseDefault](docs/InlineResponseDefault.md)
 - [InlineResponseDefault1](docs/InlineResponseDefault1.md)
 - [Platform](docs/Platform.md)
 - [Quote](docs/Quote.md)
 - [Status](docs/Status.md)


## Documentation For Authorization


## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-CMC_PRO_API_KEY
- **Location**: HTTP header


## Author



