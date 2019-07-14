# coinmarketcap_api_sdks
Swagger 2.0 Implementation of Coinmarketcap's API

# Published Swagger Spec
https://app.swaggerhub.com/apis-docs/wilkosz/coinmarketcap/1.0.0

# Generate SDK

*ruby*
swagger-codegen generate -i ~/repos/coinmarketcap_api_sdks/swagger.yml -l ruby -o ~/repos/coinmarketcap_api_sdks/ruby -c ~/repos/coinmarketcap_api_sdks/configs/config-ruby.json

*python*
swagger-codegen generate -i ~/repos/coinmarketcap_api_sdks/swagger.yml -l python -o ~/repos/coinmarketcap_api_sdks/python -c ~/repos/coinmarketcap_api_sdks/configs/config-python.json

swagger-codegen config-help -l
