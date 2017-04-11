# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module RewardSciences
  class Activities < BaseController
    @@instance = Activities.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # List all the available activities.
    # @param [Integer] user_id Required parameter: The ID of the user whose activities you want retrieved.
    # @param [Integer] limit Optional parameter: The number of activities you want to be retrieved.
    # @param [Integer] offset Optional parameter: The number of activities you want to skip before starting the retrieval.
    # @return Mixed response from the API call
    def list(user_id = nil, limit = 25, offset = 0)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/activities'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {\
        'user_id' => user_id,
        'limit' => limit,
        'offset' => offset
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'Authorization' => 'Bearer %s' % (Configuration.o_auth_access_token)
      }

      # Create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # List all the sub_merchant's activities.
    # @param [Integer] merchant_id Required parameter: The ID of the sub_merchant whose activities you want retrieved.
    # @param [Integer] limit Optional parameter: The number of activities you want to be retrieved.
    # @param [Integer] offset Optional parameter: The number of activities you want to skip before starting the retrieval.
    # @return Mixed response from the API call
    def merchant(merchant_id, limit = 25, offset = 0)
      # Validate required parameters
      if merchant_id == nil
        raise ArgumentError.new "Required parameter 'merchant_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/activities/merchant'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {\
        'merchant_id' => merchant_id,
        'limit' => limit,
        'offset' => offset
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'Authorization' => 'Bearer %s' % (Configuration.o_auth_access_token)
      }

      # Create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # This endpoint lets you track the activities your users perform.
    # @param [Integer] user_id Required parameter: The ID of the user who is performing the activity.
    # @param [String] activity_type Required parameter: The type of activity the user is performing. Example: 'purchased-a-product'
    # @param [Integer] price Optional parameter: The price related to the activity, if any. Expressed in USD
    # @param [String] record_id Optional parameter: The ID for the record associated with the activity in your database.
    # @return Mixed response from the API call
    def track(user_id,
              activity_type,
              price = nil,
              record_id = nil)

      # Validate required parameters
      if user_id == nil
        raise ArgumentError.new "Required parameter 'user_id' cannot be nil."
      elsif activity_type == nil
        raise ArgumentError.new "Required parameter 'activity_type' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/activities'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'user_id' => user_id,
        'activity_type' => activity_type,
        'price' => price,
        'record_id' => record_id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'Authorization' => 'Bearer %s' % (Configuration.o_auth_access_token)
      }

      # Create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers

      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
