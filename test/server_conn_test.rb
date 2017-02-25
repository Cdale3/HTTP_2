require 'minitest/autorun'
require 'minitest/pride'
require 'faraday'
require './lib/server_conn'

class ServerConnTest < Minitest::Test

	def test_it_exists
		ServerConn.new.is_a? ServerConn
	end

	def test_that_it_will_respond_to_an_http_request
		response  = Faraday.get('http://127.0.0.1:9292/')
		path = "<html><head></head><body> <pre>Verb: GET\nPath: /\nProtocol: HTTP/1.1\nHost: Faraday v0.11.0\nPort:\nOrigin: Faraday v0.11.0\nAccept: */*</pre></body></html>"
		assert_equal path, response.body
	end
end
