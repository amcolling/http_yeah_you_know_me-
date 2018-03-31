require './lib/server'

  class  TestServer< Minitest::Test
    def test_it_exists
    server = Server.new
    assert_instance of Server, server
    end

    def test_counter
    server = Server.new
    assert_equal 0, server.count
    end
  end
