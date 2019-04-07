=begin
#Coinmarketcap API Swagger Implementation

#Define coinmarketcap's api in swagger 2.0 openapi standard

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'date'

module CoinmarketcapAPI
  class MarketData
    attr_accessor :id

    attr_accessor :name

    attr_accessor :symbol

    attr_accessor :slug

    attr_accessor :cmc_rank

    attr_accessor :num_market_pairs

    attr_accessor :circulating_supply

    attr_accessor :total_supply

    attr_accessor :max_supply

    attr_accessor :last_updated

    attr_accessor :date_added

    attr_accessor :tags

    attr_accessor :platform

    attr_accessor :quote

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'symbol' => :'symbol',
        :'slug' => :'slug',
        :'cmc_rank' => :'cmc_rank',
        :'num_market_pairs' => :'num_market_pairs',
        :'circulating_supply' => :'circulating_supply',
        :'total_supply' => :'total_supply',
        :'max_supply' => :'max_supply',
        :'last_updated' => :'last_updated',
        :'date_added' => :'date_added',
        :'tags' => :'tags',
        :'platform' => :'platform',
        :'quote' => :'quote'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'symbol' => :'String',
        :'slug' => :'String',
        :'cmc_rank' => :'Integer',
        :'num_market_pairs' => :'Integer',
        :'circulating_supply' => :'Integer',
        :'total_supply' => :'Integer',
        :'max_supply' => :'Integer',
        :'last_updated' => :'DateTime',
        :'date_added' => :'DateTime',
        :'tags' => :'Array<String>',
        :'platform' => :'Platform',
        :'quote' => :'Hash<String, Quote>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.has_key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.has_key?(:'cmc_rank')
        self.cmc_rank = attributes[:'cmc_rank']
      end

      if attributes.has_key?(:'num_market_pairs')
        self.num_market_pairs = attributes[:'num_market_pairs']
      end

      if attributes.has_key?(:'circulating_supply')
        self.circulating_supply = attributes[:'circulating_supply']
      end

      if attributes.has_key?(:'total_supply')
        self.total_supply = attributes[:'total_supply']
      end

      if attributes.has_key?(:'max_supply')
        self.max_supply = attributes[:'max_supply']
      end

      if attributes.has_key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end

      if attributes.has_key?(:'date_added')
        self.date_added = attributes[:'date_added']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'quote')
        if (value = attributes[:'quote']).is_a?(Hash)
          self.quote = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          symbol == o.symbol &&
          slug == o.slug &&
          cmc_rank == o.cmc_rank &&
          num_market_pairs == o.num_market_pairs &&
          circulating_supply == o.circulating_supply &&
          total_supply == o.total_supply &&
          max_supply == o.max_supply &&
          last_updated == o.last_updated &&
          date_added == o.date_added &&
          tags == o.tags &&
          platform == o.platform &&
          quote == o.quote
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, symbol, slug, cmc_rank, num_market_pairs, circulating_supply, total_supply, max_supply, last_updated, date_added, tags, platform, quote].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CoinmarketcapAPI.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
