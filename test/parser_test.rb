require './lib/server'
require './lib/parser'


class  TestParser< Minitest::Test
  def test_it_exists
  parser = Parser.new
  assert_instance of Parser, parser
  end

  def test_get_verb
    parser = Parser.new("post")
    assert_equal "POST", parser.get_verb
  end

  def test_get_path
    parser = Parser.new
    assert_equal "/", parser.get_path
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
