# coding: utf-8

"""
    Coinmarketcap API Swagger Implementation

    Define coinmarketcap's api in swagger 2.0 openapi standard  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class Quote(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'price': 'float',
        'volume_24h': 'int',
        'percent_change_1h': 'float',
        'percent_change_24h': 'float',
        'percent_change_7d': 'float',
        'market_cap': 'float',
        'last_updated': 'datetime'
    }

    attribute_map = {
        'price': 'price',
        'volume_24h': 'volume_24h',
        'percent_change_1h': 'percent_change_1h',
        'percent_change_24h': 'percent_change_24h',
        'percent_change_7d': 'percent_change_7d',
        'market_cap': 'market_cap',
        'last_updated': 'last_updated'
    }

    def __init__(self, price=None, volume_24h=None, percent_change_1h=None, percent_change_24h=None, percent_change_7d=None, market_cap=None, last_updated=None):  # noqa: E501
        """Quote - a model defined in Swagger"""  # noqa: E501

        self._price = None
        self._volume_24h = None
        self._percent_change_1h = None
        self._percent_change_24h = None
        self._percent_change_7d = None
        self._market_cap = None
        self._last_updated = None
        self.discriminator = None

        if price is not None:
            self.price = price
        if volume_24h is not None:
            self.volume_24h = volume_24h
        if percent_change_1h is not None:
            self.percent_change_1h = percent_change_1h
        if percent_change_24h is not None:
            self.percent_change_24h = percent_change_24h
        if percent_change_7d is not None:
            self.percent_change_7d = percent_change_7d
        if market_cap is not None:
            self.market_cap = market_cap
        if last_updated is not None:
            self.last_updated = last_updated

    @property
    def price(self):
        """Gets the price of this Quote.  # noqa: E501


        :return: The price of this Quote.  # noqa: E501
        :rtype: float
        """
        return self._price

    @price.setter
    def price(self, price):
        """Sets the price of this Quote.


        :param price: The price of this Quote.  # noqa: E501
        :type: float
        """

        self._price = price

    @property
    def volume_24h(self):
        """Gets the volume_24h of this Quote.  # noqa: E501


        :return: The volume_24h of this Quote.  # noqa: E501
        :rtype: int
        """
        return self._volume_24h

    @volume_24h.setter
    def volume_24h(self, volume_24h):
        """Sets the volume_24h of this Quote.


        :param volume_24h: The volume_24h of this Quote.  # noqa: E501
        :type: int
        """

        self._volume_24h = volume_24h

    @property
    def percent_change_1h(self):
        """Gets the percent_change_1h of this Quote.  # noqa: E501


        :return: The percent_change_1h of this Quote.  # noqa: E501
        :rtype: float
        """
        return self._percent_change_1h

    @percent_change_1h.setter
    def percent_change_1h(self, percent_change_1h):
        """Sets the percent_change_1h of this Quote.


        :param percent_change_1h: The percent_change_1h of this Quote.  # noqa: E501
        :type: float
        """

        self._percent_change_1h = percent_change_1h

    @property
    def percent_change_24h(self):
        """Gets the percent_change_24h of this Quote.  # noqa: E501


        :return: The percent_change_24h of this Quote.  # noqa: E501
        :rtype: float
        """
        return self._percent_change_24h

    @percent_change_24h.setter
    def percent_change_24h(self, percent_change_24h):
        """Sets the percent_change_24h of this Quote.


        :param percent_change_24h: The percent_change_24h of this Quote.  # noqa: E501
        :type: float
        """

        self._percent_change_24h = percent_change_24h

    @property
    def percent_change_7d(self):
        """Gets the percent_change_7d of this Quote.  # noqa: E501


        :return: The percent_change_7d of this Quote.  # noqa: E501
        :rtype: float
        """
        return self._percent_change_7d

    @percent_change_7d.setter
    def percent_change_7d(self, percent_change_7d):
        """Sets the percent_change_7d of this Quote.


        :param percent_change_7d: The percent_change_7d of this Quote.  # noqa: E501
        :type: float
        """

        self._percent_change_7d = percent_change_7d

    @property
    def market_cap(self):
        """Gets the market_cap of this Quote.  # noqa: E501


        :return: The market_cap of this Quote.  # noqa: E501
        :rtype: float
        """
        return self._market_cap

    @market_cap.setter
    def market_cap(self, market_cap):
        """Sets the market_cap of this Quote.


        :param market_cap: The market_cap of this Quote.  # noqa: E501
        :type: float
        """

        self._market_cap = market_cap

    @property
    def last_updated(self):
        """Gets the last_updated of this Quote.  # noqa: E501


        :return: The last_updated of this Quote.  # noqa: E501
        :rtype: datetime
        """
        return self._last_updated

    @last_updated.setter
    def last_updated(self, last_updated):
        """Sets the last_updated of this Quote.


        :param last_updated: The last_updated of this Quote.  # noqa: E501
        :type: datetime
        """

        self._last_updated = last_updated

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(Quote, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, Quote):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
