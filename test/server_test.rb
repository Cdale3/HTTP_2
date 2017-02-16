require 'minitest/autorun'
require 'minitest/pride'
require './lib/server'
require 'faraday'
require 'socket'
require 'pry'

class ServerTest < Minitest::Test
  def test_that_get_works
    client = Faraday.new('http://127.0.0.1:9293')
    resp = client.get('http://127.0.0.1:9293')

		assert_equal "127.0.0.1", client.host
  end
end
