$:.unshift File.dirname(__FILE__)

require 'zoom_us/utils'
require 'zoom_us/actions/user'
require 'zoom_us/actions/meeting'
# require 'zoom_us/actions/metrics'
# require 'zoom_us/actions/report'
# require 'zoom_us/actions/webinar'
# require 'zoom_us/actions/recording'
require 'zoom_us/client'
require 'zoom_us/error'

module ZoomUs
  class << self
    attr_accessor :access_token

    def new(params = {})
      @access_token = params.fetch(:access_token, '')
      ZoomUs::Client.new(
        :access_token => @access_token
      )
    end

  end
end
