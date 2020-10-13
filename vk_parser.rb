require 'httparty'
require 'dotenv/load'

# return response of vk.com api
module Telegram
  class VkParser
    include HTTParty
    base_uri 'https://api.vk.com/method/'
    default_params access_token: ENV['VK_API_TOKEN'], v: ENV['VK_API_VERSION'], count: 1

    def posts(options = { domain: 'moisture', query: '2020' })
      method = options[:query] ? '/wall.search' : '/wall.get'
      self.class.get(method, query: options)
    end
  end
end
