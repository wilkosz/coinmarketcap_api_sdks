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
from CmcClient.models.quote import Quote  # noqa: E501
from CmcClient.rest import ApiException


class TestQuote(unittest.TestCase):
    """Quote unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testQuote(self):
        """Test Quote"""
        # FIXME: construct object with mandatory attributes with example values
        # model = CmcClient.models.quote.Quote()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()