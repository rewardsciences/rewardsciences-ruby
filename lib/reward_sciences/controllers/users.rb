# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module RewardSciences
  class Users < BaseController
    @@instance = Users.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # This endpoint lets retrieve a user's details.
    # @param [Integer] user_id Required parameter: The ID of the user to be retrieved.
    # @return Mixed response from the API call
    def show(user_id)

      # Validate required parameters
      if user_id == nil
        raise ArgumentError.new "Required parameter 'user_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users/{user_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'user_id' => user_id
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

    # This endpoint lets you tie a user with his/her activities. You’ll want to identify a user with any relevant information as soon as they log-in or sign-up.
    # @param [String] email Required parameter: The user's email address
    # @param [String] first_name Optional parameter: The user's first name
    # @param [String] last_name Optional parameter: The user's last name
    # @return Mixed response from the API call
    def identify(email, 
                 first_name = nil, 
                 last_name = nil)

      # Validate required parameters
      if email == nil
        raise ArgumentError.new "Required parameter 'email' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/users'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'email' => email,
        'first_name' => first_name,
        'last_name' => last_name
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
