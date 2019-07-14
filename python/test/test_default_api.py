# coding: utf-8

"""
    Coinmarketcap API Swagger Implementation

    Define coinmarketcap's api in swagger 2.0 openapi standard  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import CmcClient
from CmcClient.api.default_api import DefaultApi  # noqa: E501
from CmcClient.rest import ApiException


class TestDefaultApi(unittest.TestCase):
    """DefaultApi unit test stubs"""

    def setUp(self):
        self.api = CmcClient.api.default_api.DefaultApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_cryptocurrency_info_get(self):
        """Test case for cryptocurrency_info_get

        Get metadata  # noqa: E501
        """
        pass

    def test_cryptocurrency_listings_historical_get(self):
        """Test case for cryptocurrency_listings_historical_get

        List all cryptocurrencies (historical)  # noqa: E501
        """
        pass

    def test_cryptocurrency_listings_latest_get(self):
        """Test case for cryptocurrency_listings_latest_get

        List all cryptocurrencies (latest)  # noqa: E501
        """
        pass

    def test_cryptocurrency_map_get(self):
        """Test case for cryptocurrency_map_get

        Get CoinMarketCap ID map  # noqa: E501
        """
        pass

    def test_global_metrics_quotes_historical_get(self):
        """Test case for global_metrics_quotes_historical_get

        List all cryptocurrencies (latest)  # noqa: E501
        """
        pass

    def test_global_metrics_quotes_latest_get(self):
        """Test case for global_metrics_quotes_latest_get

        Get aggregate market metrics (latest)  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()