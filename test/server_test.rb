require './lib/server'
require './lib/parser'

  class  TestServer< Minitest::Test
    def test_it_exists
    server = Server.new
    assert_instance of Server, server
    end

  


end
