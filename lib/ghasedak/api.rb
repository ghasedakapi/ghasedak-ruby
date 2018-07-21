# Ghasedak module
module Ghasedak
  # API connection
  class API
    include HTTParty
    include Request

    @api_base = 'api.ghasedakapi.com'

    def initialize(api_key, api_version = '/api/v1', api_base = 'api.ghasedakapi.com')
      @api_key = api_key
      @api_version = api_version
      @api_base = api_base
    end

    def check_required list
      # check if array
      if is_array list
        list.each do |item|
          if item.nil? {
            return item
          }
        end
      end
      return nil
    end

    def send(message:nil, receptor: nil, linenumber: nil, senddate: nil, checkid: nil)
      # r = this.check_required([message, receptor])
      @options = {}

      @options[:headers] = {
        Accept: "application/json",
				:"Content-Type" => "application/x-www-form-urlencoded",
        charset: "utf-8"
      }

      @options[:body] = {
        message: message,
  			receptor: receptor,
  			linenumber: linenumber,
  			senddate: senddate,
        checkid: checkid
      }

      API.request('/sms/send/simple', options)
    end

    def bulk1(message: nil, receptor: nil, linenumber: nil, senddate: nil, chackid: nil)
      # r = this.check_required([message, linenumber, receptor, senddate])
      @options = {}

      @options[:headers] = {
        Accept: "application/json",
				:"Content-Type" => "application/x-www-form-urlencoded",
        charset: "utf-8"
      }

      @options[:body] = {
        message: message,
  			receptor: receptor,
  			linenumber: linenumber,
  			senddate: senddate,
        checkid: checkid
      }

      API.request('/sms/send/bulk', options)
    end

    def bulk2(message: nil, receptor: nil, linenumber: nil, senddate: nil, chackid: nil)
      # r = this.check_required([message, receptor])
      @options = {}

      @options[:headers] = {
        Accept: "application/json",
				:"Content-Type" => "application/x-www-form-urlencoded",
        charset: "utf-8"
      }

      @options[:body] = {
        message: message,
  			receptor: receptor,
  			linenumber: linenumber,
  			senddate: senddate,
        checkid: checkid
      }

      API.request('/sms/send/bulk2', options)

    end

    def bulk(message: nil, receptor: nil, linenumber: nil, senddate: nil, chackid: nil, type: 1)
      puts 'nothing'
    end

    def voicecall(message: nil, receptor: nil, senddate: nil)
      @options = {}

      @options[:headers] = {
        Accept: "application/json",
				:"Content-Type" => "application/x-www-form-urlencoded",
        charset: "utf-8"
      }

      @options[:body] = {
        message: message,
  			receptor: receptor,
  			senddate: senddate
      }

      API.request('/voice/send', options)
    end

    def template(receptor: nil, type_: nil, template: nil, param1: nil, param2: nil, param3: nil)
      @options = {}

      @options[:headers] = {
        Accept: "application/json",
				:"Content-Type" => "application/x-www-form-urlencoded",
        charset: "utf-8"
      }

      @options[:body] = {
  			receptor: receptor,
        type: type_,
  			template: template,
  			param1: param1,
        param2: param2,
        param3: param3
      }

      API.request('/sms/verify', options)
    end
  end
end
