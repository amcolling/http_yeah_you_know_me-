require './lib/server'
require './lib/parser'

class  TestResponse< Minitest::Test
  def test_it_exists
  response = Response.new
  assert_instance of Response, response
  end
end







#If they request the root, aka /, respond with just the debug info from Iteration 1.
# If they request /hello, respond with “Hello, World! (0)” where the 0 increments each time the path is requested, but not when any other path is requested.
# If they request /datetime, respond with today’s date and time in this format: 11:07AM on Sunday, November 1, 2015.
# If they request /shutdown, respond with “Total Requests: 12” where 12 is the aggregate of all requests. It also causes the server to exit / stop serving requests.
