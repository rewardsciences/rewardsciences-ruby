# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module RewardSciences
  class Rewards < BaseController
    @@instance = Rewards.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Bid on a reward auction.
    # @param [Integer] user_id Required parameter: The ID of the user who is bidding on the reward auction.
    # @param [Integer] reward_id Required parameter: The ID of the reward auction to be bid on.
    # @param [String] amount Required parameter: Can be either 'max' (when max bidding) or the number of points the user wants to bid.
    # @return Mixed response from the API call
    def bid(user_id, 
            reward_id, 
            amount)

      # Validate required parameters
      if user_id == nil
        raise ArgumentError.new "Required parameter 'user_id' cannot be nil."
      elsif reward_id == nil
        raise ArgumentError.new "Required parameter 'reward_id' cannot be nil."
      elsif amount == nil
        raise ArgumentError.new "Required parameter 'amount' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/rewards/{reward_id}/bids'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'reward_id' => reward_id
      }

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'user_id' => user_id,
        'amount' => amount
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

    # List all the available rewards.
    # @param [Integer] category_id Optional parameter: The id of the category to filter rewards by
    # @param [Integer] limit Optional parameter: The number of rewards you want to be retrieved.
    # @param [Integer] offset Optional parameter: The number of rewards you want to skip before starting the retrieval.
    # @return Mixed response from the API call
    def list(category_id = nil, 
             limit = 25, 
             offset = 0)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/rewards'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'category_id' => category_id,
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

    # Redeem a reward.
    # @param [Integer] user_id Required parameter: The ID of the user who is redeeming the reward.
    # @param [Integer] reward_id Required parameter: The ID of the reward to be redeemed.
    # @return Mixed response from the API call
    def redeem(user_id, 
               reward_id)

      # Validate required parameters
      if user_id == nil
        raise ArgumentError.new "Required parameter 'user_id' cannot be nil."
      elsif reward_id == nil
        raise ArgumentError.new "Required parameter 'reward_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/rewards/{reward_id}/redemptions'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'reward_id' => reward_id
      }

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
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

    # Show a reward's details.
    # @param [Integer] reward_id Required parameter: The ID of the reward to be retrieved.
    # @return Mixed response from the API call
    def show(reward_id)

      # Validate required parameters
      if reward_id == nil
        raise ArgumentError.new "Required parameter 'reward_id' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/rewards/{reward_id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'reward_id' => reward_id
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
  end
end
