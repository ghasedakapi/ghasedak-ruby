# Ghasedak module
module Ghasedak
  include HTTParty
  # Request class
  class Request
    # http request wrapper for ghasedak api
    def request(path, opts)
      @path = @api_base + @api_version + path
      Request.post(@path, opts)
    end
  end
end
