$:.unshift File.dirname(__FILE__)

require 'zoomus/utils'
require 'zoomus/actions/user'
require 'zoomus/actions/meeting'
# require 'zoomus/actions/metrics'
# require 'zoomus/actions/report'
# require 'zoomus/actions/webinar'
# require 'zoomus/actions/recording'
require 'zoomus/client'
require 'zoomus/error'

module Zoomus
  class << self
    attr_accessor :access_token

    def new(params = {})
      @access_token = params.fetch(:access_token, '')
      Zoomus::Client.new(
        :access_token => @access_token
      )
    end

  end
end
