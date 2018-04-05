require './lib/server'
require './lib/parser'


class  TestParser< Minitest::Test
  def test_it_exists
    parser = Parser.new
    assert_instance of Parser, parser
  end

  def test_verb
    parser = Parser.new(string)
    assert_equal "POST", Parser, parser.verb
  end

  def test_host
    parser = Parser.new(string)
    assert_equal "/", parser.host
  end

  def test_protocol
    parser = Parser.new(string)
    assert_equal "HTTP/1.1", parser.protocol
  end

  def test_port
    parser = Parser.new(string)
    assert_equal "9292", parser.port
  end

  def test_origin
    parser = Parser.new(string)
    assert_equal "127.0.0.1", parser.port
  end
end






    # <pre>
    # Verb: POST
    # Path: /
    # Protocol: HTTP/1.1
    # Host: 127.0.0.1
    # Port: 9292
    # Origin: 127.0.0.1
    # Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
    # </pre>
