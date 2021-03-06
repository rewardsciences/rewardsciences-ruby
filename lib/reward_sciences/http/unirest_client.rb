# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module RewardSciences
  class UnirestClient < HttpClient
    # Method overridden from HttpClient.
    def execute_as_string(http_request)
      if http_request.username || http_request.password
        auth = {:user=>http_request.username, :password=>http_request.password}
      end

      response = Unirest.method(http_request.http_method.downcase).call(http_request.query_url,
        headers: full_headers(http_request), parameters: http_request.parameters,
        auth: auth)

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def execute_as_binary(http_request)
      if http_request.username || http_request.password
        auth = {:user=>http_request.username, :password=>http_request.password}
      end

      response = Unirest.method(http_request.http_method.downcase).call(http_request.query_url,
        headers: full_headers(http_request), parameters: http_request.parameters,
        auth: auth)

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def convert_response(response)
      return HttpResponse.new(response.code, response.headers.dup, response.raw_body.dup)
    end

    # Standard Headers
    def full_headers(request)
      request.headers.merge({
        'Accept' => 'application/vnd.rewardsciences.v1+json',
        'Content-Type' => 'application/json'
      })
    end
  end
end
