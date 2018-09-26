require 'httparty'
require 'json'

module ZoomUs
  class Client

    include HTTParty
    include Actions::User
    include Actions::Meeting
    # include Actions::Metrics
    # include Actions::Webinar
    # include Actions::Report
    # include Actions::Recording

    base_uri 'https://api.zoom.us/v2'

    def initialize(*args)

      options = Utils.extract_options!(args)
      
      raise Utils.argument_error("access_token") unless options[:access_token]

      self.class.default_options[:headers] = {
        "Authorization" => "Bearer #{options[:access_token]}",
        "Content-Type" => "application/json;charset=UTF-8"
      }
    end
  end
end
